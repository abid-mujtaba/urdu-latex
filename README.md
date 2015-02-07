# Type-setting Urdu in LaTeX

Urdu is a language that needs, rather demands, proper type-setting to get the full impact of the written word across. The desire to completely control how the text looks on paper makes LaTeX an absolutely esential tool for type-setting Urdu.

We will be using XeTeX for this purpose. XeTeX is a variant of TeX that supports unicode. This is essential since unicode greatly simplifies typing and storing Urdu characters in a digital format. We will be using the *xelatex* binary which couples XeTeX and LaTeX.

In this repo I demonstrate how to use XeTeX to type-set both Urdu prose and poetry, the latter revealing the elegance that is possible only with XeTeX.

You can view samples of this technique by heading over to:

* [nasr](http://abid-mujtaba.github.io/urdu-latex/docs/nasr.pdf)
* [nazm](http://abid-mujtaba.github.io/urdu-latex/docs/nazm.pdf)


## Installation

I will provide the instructions for setting up Urdu type-setting using XeTeX in Ubuntu 14.04. Simply enter these commands in to a terminal to set up XeTeX for Urdu Type-setting.

```
sudo apt-get install texlive-xetex
sudo apt-get install xzdec

tlmgr init-usertree
tlmgr install bidi
tlmgr install iftex
```

- The first command installs a package that gives access to the *xelatex* package.
- The second command installs *xzdec* which is required by *tlmgr* (which is a program that is used to manage TexLive packages for instance *bidi*)
- The third command initiates *tlmgr*.
- The final two commands are used to install the *bidi* and *iftex* TeX packages that are required to compile tex files that use the *bidi* package.

To use the Urdu keyboard (I recommend the one from CRULP, now called CLE (FAST University)) navigate to *Applications >> System Tools >> System Settings >> Keyboard >> Text Entry* and press the + button on bottom-left and select *Urdu (Pakistan, CRULP)*.

To change to this keyboard layout (language) one can press *Super + Space* or use the Keyboard Layout Gnome applet on the top bar menu.


## Compilation

Compilation is straight-forward. For instance, to compile the *nasr.tex* file and create the *nasr.pdf* file simply issue the following command in the terminal from inside the folder that contains the *nasr.tex* file:

```
xelatex nasr.tex
```

After a verbose spitting out of compilation information *xelatex* will create the *nasr.pdf* file in the same folder.


## Tips

- The *evince* pdf-reader that comes by default in Ubuntu vertically clips the Urdu text in particular the slanting stroke of the *kaaf*.
- Google Chrome displays the rendered pdf correctly.
- Gedit is a useful editor for typing in Urdu. Navigate to *Edit >> Preferences >> Font & Colors (Tab)* to change the font to "Nafees". Choose a large font size (I prefer 18) and you can start typing.
- Successive lines will start over-lapping for which you need to increase the line-spacing. Install the line-spacing plugin from: https://natural966.wordpress.com/2012/08/19/my-linespacing-plugin-for-gedit-3/ (Note: You will have to change the loader configuration from *python* to *python3* for the plugin to work).  
