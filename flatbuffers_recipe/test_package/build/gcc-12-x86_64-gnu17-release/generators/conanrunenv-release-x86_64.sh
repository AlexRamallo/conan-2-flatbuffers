echo "echo Restoring environment" > "/var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/generators/deactivate_conanrunenv-release-x86_64.sh"
for v in 
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "/var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/generators/deactivate_conanrunenv-release-x86_64.sh"
    else
        echo unset $v >> "/var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/generators/deactivate_conanrunenv-release-x86_64.sh"
    fi
done

