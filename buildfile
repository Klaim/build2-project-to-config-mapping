# Glue buildfile that "pulls" all the packages in the project.
#
import pkgs = [dir_paths] $process.run_regex(\
    cat $src_root/packages.manifest, '\s*location\s*:\s*(\S+)\s*', '\1')

./: $pkgs



define run: alias

build_configs_dir = builds/

run{bootstrap}:
{{
    diag bootstrap $>
    bdep init --empty
    bdep config create @msvc $build_configs_dir/msvc cc config.cxx=cl
    bdep config create @clang $build_configs_dir/clang cc config.cxx=clang++

    bdep init -d machin/ @msvc
    bdep init -d truc/ @clang
}}

run{clear}:
{{
    diag clear $>
    rm -rf .bdep/ builds/
}}
