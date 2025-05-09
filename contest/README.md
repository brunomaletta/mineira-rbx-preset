# Using `rbx`

## Usage

Instructions can be found [here](https://rsalesc.github.io/rbx/setters/first-steps/), and more information can be found inside each problem's `problem.rbx.yml`.

Also, you can find instructional videos [here](https://drive.google.com/drive/folders/100nIVGWt-iCtWn1dxbhhEgRdDpAWlHAX?usp=sharing).

## Requirements

### OS

Ensure you're either on Linux or MacOS. If you're on Windows, you can use WSL.

### Python3

Ensure you have Python3 >= 3.9 installed in your system, and `pip` as well (Python's package manager).

You can check Python's version by running `python3 --version`.

In Ubuntu, you can install with:

```sh
sudo apt install python3 python3-pip
```

In MacOS, `brew install python3` should suffice.

### Toolchain

Ensure you have the compilers for the languages you want to work with. For this package, these are
C/C++, Java and Python3.

Make sure you have them all installed and accessible in PATH.

If you're on a clean Ubuntu, you can also get the exact same Maratona Linux packages by doing:

```sh
sudo add-apt-repository ppa:icpc-latam/maratona-linux 
sudo apt install maratona-linguagens
```

In MacOS, you should look to install them individually with `brew`.

### Pipx

To install `rbx`, you need to install `pipx` beforehand. Follow the instructions [here](https://pipx.pypa.io/stable/installation/) depending on your OS.

### Install `rbx`

Finally, you can install `rbx` by running:

```sh
pipx install rbx.cp
```

### pdfLaTeX

You also need `pdfLaTeX` if you intend to build the PDF statements.

In Ubuntu, you can do:

```sh
sudo apt install \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-latex-extra \
    texlive-science \
    texlive-games \
    texlive-lang-portuguese

# or, if you have time to spare...
sudo apt install texlive-full
```

In MacOS, you should look at [MacTeX](https://www.tug.org/mactex/).

WARNING: `pdfLaTeX` acts weird the first time it is executed after installation. If you see your build statement command get stuck after running it for the first time, just re-run.