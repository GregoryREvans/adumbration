# Adumbration
Second String Quartet adumbration (2018)

[![Build Status](https://travis-ci.com/GregoryREvans/adumbration.svg?branch=master)](https://travis-ci.com/GregoryREvans/adumbration) <br />
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/python/black) <br/>

This package represents the end result of a composition process using the Abjad API for Formalized Score Control (https://abjad.github.io/) and the author's own packages (http://www.gregoryrowlandevans.com/perllan/). Each `definition.py` file in its respective segment directory may contain function definitions, but these functions are not imported into the package for use. There is little here to be used by developers other than the author and therefore this package represents a use case of the programs mentioned above.

Use:
- Abjad and all of its dependencies must be installed (for a quick look at dependencies for Adumbration the user can consult the build configuration for Travis [https://github.com/GregoryREvans/evans/blob/master/dotfiles/score.yml])
- After installation, when python is called to interpret the `definition.py` files in each segment directory, a PDF and illustration.ly file are produced.
- Each segment can be concatenated in the `build/score` directory by calling lilypond to interpret the `Score.ly` file.


Copyright 2020 Gregory Rowland Evans

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
