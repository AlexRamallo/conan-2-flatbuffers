echo "echo Restoring environment" > "/var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/generators/deactivate_conanbuildenv-release-x86_64.sh"
for v in PATH LD_LIBRARY_PATH DYLD_LIBRARY_PATH
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "/var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/generators/deactivate_conanbuildenv-release-x86_64.sh"
    else
        echo unset $v >> "/var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/generators/deactivate_conanbuildenv-release-x86_64.sh"
    fi
done


export PATH="/var/home/aramallo/.conan2/p/flatb6f9c55664b9cd/p/bin:$PATH"
export LD_LIBRARY_PATH="/var/home/aramallo/.conan2/p/flatb6f9c55664b9cd/p/lib:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/var/home/aramallo/.conan2/p/flatb6f9c55664b9cd/p/lib:$DYLD_LIBRARY_PATH"