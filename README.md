# scripts


## Introduction

This repository is intended to serve as a template for a versioned
collection of shell scripts.  If you're a beginner and you want to
effectively track changes to your personal programs, you can use this
repository to get started.

Hosting your repository of scripts online means that they are protected from
loss.  It also means that you can clone your scripts to multiple machines
and make use of them wherever you go!


## Set-up

Using this project is simple.  It should work on almost any `*nix` box you
may encounter.  If you're a beginner, you probably don't have a `bin/`
directory in your `$HOME` folder.  The process outlined below will help you
create one!

**Notice:**  If you already have a `~/bin/` directory, you should inspect
the included `Makefile` to ensure that  none of the scripts you already use
will be overwritten.

1. Fork this repository.
2. Clone the new fork to your local machine with the `git clone` command.
3. Run `make install` to create the directory structure below:

```
~/bin/
├── local/
├── ppath*
└── wanip*

1 directory, 3 files
```

4. Add this line to the bottom of your `.profile` or `.bash_profile` script.

```bash
PATH="$HOME/bin/local:$HOME/bin:$PATH"
```

5. Test your installation by logging out and logging back in and then
running the `ppath` command.

If everything was successful, you should see the correct `$PATH` variable
pretty-printed in your terminal!


## Usage

Going forward, you can use the clone of your fork to develop new scripts and
track changes to existing ones.  When you want to update the scripts that
live in your `~/bin/` directory, just run the `make update` command.  Read
the `Makefile` to see what all of the targets do!

The `~/bin/local` directory is special.  Use this directory to hold
executables that are particular to your current host.  The `make update`
command will never touch these scripts and they won't be tracked in your
repository.

Oh, and two example scripts are included for you to try out.  Enjoy!


## License

See the `LICENCSE` file.
