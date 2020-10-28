# Paper Mario

This is a WIP decompilation of Paper Mario (USA). It builds the following ROM:

* papermario.z64 `md5: a722f8161ff489943191330bf8416496`

Discord: [Paper Mario Modding](https://discord.gg/urUm3VG)

## Setup

You'll need Linux, a Linux VM, or [Windows 10 (WSL2)](#wsl) to work on this project.

#### Clone the repository
```sh
$ git clone https://github.com/ethteck/papermario.git
$ cd papermario
```

#### Install build dependencies

```sh
$ ./install.sh
```

Our install script does not yet support distros other than Ubuntu, Arch, and their derivatives. Please consider contributing to the script if you use another distro!

#### Base ROM

You'll need a Paper Mario (USA) ROM to work on this project. Copy it into the root directory of the repository with the name `baserom.z64`.

#### Install tools and extract ROM

```sh
$ make setup
```

### Compile the game

```sh
$ make
```

If you get `OK`, you're all set! Otherwise, please feel free to reach out to us in [our Discord channel](https://discord.gg/urUm3VG).

## Contributing

### Dependencies

There are a few additional dependencies needed when contributing to this project. You can install them with `./install.sh --extra`.

### WSL

We provide [windows_terminal.bat](tools/windows_terminal.bat) to open a [Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701) with a recommended layout. Make sure a default distro (e.g. `wsl --set-default ubuntu`) is set beforehand.

### Rebuilding

Setting the `PM_HEADER_REBUILD` environment variable will cause `make` to rebuild all `.c` files whenever a `.h` file is modified.

```sh
$ PM_HEADER_REBUILD=1 make
```

If you use Visual Studio Code, you can use _Run Build Task_ (Ctrl+Shift+B) to run `make`. Any errors or warnings generated by the compiler will show up in the _Problems_ tab.

### Matching a function

#### Setup

Once you've created a successful (`OK`) build, copy `build/` to `expected/build/`:

```sh
$ mkdir -p expected
$ cp -r build expected
```

#### Roughly converting assembly to C

Decide on a function to match. These can be found in the subdirectories of `asm/nonmatchings/`. Currently, functions which use float constants, data sections, or jump tables are unmatchable.

Take the relevant `.s` file and pass it to [mips_to_c](https://github.com/matt-kempster/mips_to_c) ([web version](https://simonsoftware.se/other/mips_to_c.py)).

You can also use mips_to_c locally installed to a destination of your choice. Then register a function in `~/.bashrc` that calls `path/to/mips_to_c.py (with args)`:
```
sudo apt update
sudo apt install python3-pip
sudo git clone https://github.com/matt-kempster/mips_to_c.git path/to/mips_to_c
```

Here's a starter function you can use:
```sh
# don't forget to replace /path/to/mips_to_c with your path
function mipstoc() {
    if [ "$#" -gt 1 ]; then
        /path/to/mips_to_c/mips_to_c.py $@;
    else
        printf "Please call mipstoc using this format and make sure you're at the repo root:";
        printf "\nmipstoc \033[0;31marg1 - the nonmatching asm file\033[0m \033[0;34marg2 - the target function\033[0m \033[0;33margN - any of the optional mips_to_c.py flags\033[0m";
        printf "\nmipstoc \033[0;31m./asm/nonmatchings/code_13870_len_6980/func_8003B3D0.s\033[0m \033[0;34mfunc_8003B3D0\033[0m \033[0;33m--flag1 --flag2 --flagN\033[0m\n";
        /path/to/mips_to_c/mips_to_c.py;
    fi
}
export -f mipstoc
```

Open up the relevant `.c` file and replace the function's `INCLUDE_ASM` macro with the output from mips_to_c. Run the following command to attempt to compile, replacing `function_name` with the name of the function you're working with:

```sh
./diff.py -mwo function_name
```

Fix any errors and rerun `diff.py`. This will involve typing the function signature correctly, which you will probably find in [Star Rod's library database](https://github.com/nanaian/star-rod/blob/master/database/common_func_library.lib). See also [common_structs.h](include/common_structs.h).

Once a successful build is made, `diff.py` will show you the difference between the original game's assembly (on the left) and what your C code generated (on the right).

#### Matching the function

You're on your own now. Get your C code compiling to match the original assembly! `diff.py`, when running, will automatically recompile your code whenever you save the `.c` file.

If you use Visual Studio Code, you can use _Run Test Task_ to run `diff.py` and show you errors and warnings from the compiler inline. You might want to attach _Run Test Task_ to a keybinding, as you'll be using it often.

#### After matching

Once you've matched a function, run the following scripts:

```sh
$ ./coverage.py --delete-matched
$ ./format.sh
```

If `format.sh` has any problems with your code, go and fix the issues. If you can't fix a warning without making the function not match anymore, append `// NOLINT` to the offending line.

## Troubleshooting

* If you are using Windows, you may encounter the following when you run `make`:
```
sha1sum -c checksum.sha1
sha1sum: 'papermario.z64'$'\r': No such file or directory
: FAILED open or read
sha1sum: WARNING: 1 listed file could not be read
Makefile:118: recipe for target 'verify' failed
make: *** [verify] Error 1
```
> 💡 Solution

> Run `git checkout checksum.sha1` and retry building. Windows has different line endings than Linux, causing some of our tools to break. 
