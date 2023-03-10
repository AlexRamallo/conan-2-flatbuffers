//https://google.github.io/flatbuffers/flatbuffers_guide_tutorial.html

#include <iostream>
#include <fstream>
#include <flatbuffers/flatbuffers.h>
#include "monster_generated.h"
using namespace MyGame::Sample; // Specified in the schema.

void create_buffer(std::string dest){    
    flatbuffers::FlatBufferBuilder builder(1024);

    auto weapon_one_name = builder.CreateString("Sword");
    short weapon_one_damage = 3;
     
    auto weapon_two_name = builder.CreateString("Axe");
    short weapon_two_damage = 5;
     
    // Use the `CreateWeapon` shortcut to create Weapons with all the fields set.
    auto sword = CreateWeapon(builder, weapon_one_name, weapon_one_damage);
    auto axe = CreateWeapon(builder, weapon_two_name, weapon_two_damage);

    // Serialize a name for our monster, called "Orc".
    auto name = builder.CreateString("Orc");
     
    // Create a `vector` representing the inventory of the Orc. Each number
    // could correspond to an item that can be claimed after he is slain.
    unsigned char treasure[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    auto inventory = builder.CreateVector(treasure, 10);

    // Place the weapons into a `std::vector`, then convert that into a FlatBuffer `vector`.
    std::vector<flatbuffers::Offset<Weapon>> weapons_vector;
    weapons_vector.push_back(sword);
    weapons_vector.push_back(axe);
    auto weapons = builder.CreateVector(weapons_vector);

    Vec3 points[] = { Vec3(1.0f, 2.0f, 3.0f), Vec3(4.0f, 5.0f, 6.0f) };
    auto path = builder.CreateVectorOfStructs(points, 2);

    // Create the position struct
    auto position = Vec3(1.0f, 2.0f, 3.0f);
     
    // Set his hit points to 300 and his mana to 150.
    int hp = 300;
    int mana = 150;
     
    // Finally, create the monster using the `CreateMonster` helper function
    // to set all fields.
    auto orc = CreateMonster(builder, &position, mana, hp, name, inventory,
                            Color_Red, weapons, Equipment_Weapon, axe.Union(),
                            path);

    // Call `Finish()` to instruct the builder that this monster is complete.
    // Note: Regardless of how you created the `orc`, you still need to call
    // `Finish()` on the `FlatBufferBuilder`.
    builder.Finish(orc); // You could also call `FinishMonsterBuffer(builder, orc);`.

    // This must be called after `Finish()`.
    uint8_t *buf = builder.GetBufferPointer();
    int size = builder.GetSize(); // Returns the size of the buffer that
                                  // `GetBufferPointer()` points to.

    std::ofstream output(dest, std::ofstream::binary);
    output.write(reinterpret_cast<const char*>(buf), size);
    output.close();
}

int load_buffer(std::string file){
    std::ifstream input(file, std::ifstream::binary);
    input.seekg(0, std::ios::end);
    size_t inputSize = input.tellg();
    input.seekg(0, std::ios::beg);
    char* buffer_pointer = new char[inputSize];
    input.read(buffer_pointer, inputSize);
    input.close();

    auto verifier = flatbuffers::Verifier(reinterpret_cast<uint8_t*>(buffer_pointer), inputSize);
    bool ok = VerifyMonsterBuffer(verifier);
    if(!ok){
        std::cerr << "Failed to verify monster buffer" << std::endl;
        return 1;
    }

    // Get a pointer to the root object inside the buffer.
    auto monster = GetMonster(buffer_pointer);
    auto hp = monster->hp();
    auto mana = monster->mana();
    auto name = monster->name()->c_str();
    auto pos = monster->pos();
    auto x = pos->x();
    auto y = pos->y();
    auto z = pos->z();
    auto inv = monster->inventory(); // A pointer to a `flatbuffers::Vector<>`.
    auto inv_len = inv->size();
    auto third_item = inv->Get(2);
    auto weapons = monster->weapons(); // A pointer to a `flatbuffers::Vector<>`.
    auto weapon_len = weapons->size();
    auto second_weapon_name = weapons->Get(1)->name()->str();
    auto second_weapon_damage = weapons->Get(1)->damage();
    auto union_type = monster->equipped_type();
     
    std::cout << "hp: " << hp << std::endl;
    std::cout << "mana: " << mana << std::endl;
    std::cout << "name: " << name << std::endl;
    std::cout << "pos: " << x << "," << y << "," << z << std::endl;
    std::cout << "inv_len: " << inv_len << std::endl;
    std::cout << "third_item: " << third_item << std::endl;
    std::cout << "weapon_len: " << weapon_len << std::endl;
    std::cout << "second_weapon_name: " << second_weapon_name << std::endl;
    std::cout << "second_weapon_damage: " << second_weapon_damage << std::endl;

    if (union_type == Equipment_Weapon) {
      auto weapon = static_cast<const Weapon*>(monster->equipped()); // Requires `static_cast`
                                                                     // to type `const Weapon*`.
     
      auto weapon_name = weapon->name()->str(); // "Axe"
      auto weapon_damage = weapon->damage();    // 5

      std::cout << "weapon_name: " << weapon_name << std::endl;
      std::cout << "weapon_damage: " << weapon_damage << std::endl;
    }

    delete buffer_pointer;
    return 0;
}

int main(int argc, char *argv[]){
    std::cout << "Hello, Conan 21.0!" << std::endl;
    create_buffer("orc.bin");
    return load_buffer("orc.bin");
}