## htmlEntities for lua  [![Build Status](https://travis-ci.org/TiagoDanin/htmlEntities-for-lua.svg?branch=master)](https://travis-ci.org/TiagoDanin/htmlEntities-for-lua) [![MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/TiagoDanin/htmlEntities-for-lua/blob/master/LICENSE) [![Luarocks](https://img.shields.io/badge/Luarocks-html--entities-yellow.svg)](http://luarocks.org/modules/tiagodanin/html-entities)
**Module for lua, decoding html entities :)**

Module for decoding of text using entities html

or encode of text to entities html :V


## Requires
Written for Lua5.x

## Setup
Use the terminal(luarocks) `$ luarocks install html-entities`

Or Makefile(Debian):

Install for all (lua5.x) `$ make all`

Remove for all (lua5.x) `$ make unistallall`

To install only for a single `$ make install5.x`

The same goes for remove `$ make unistall5.x`

*Only available from the releases 0.3.1*


## Releases
[BETA](https://github.com/TiagoDanin/htmlEntities-for-lua/tree/master)

[Stable](https://github.com/TiagoDanin/htmlEntities-for-lua/releases)

[Luarocks](http://luarocks.org/modules/tiagodanin/html-entities)


## DOC
Module function:

Function                      |                            Info |
------------------------------|---------------------------------|
htmlEntities.decode(input)    | Decode html entities to text
htmlEntities.encode(input)    | Encode text to html entities :v
htmlEntities.ASCII_HEX(input) | Decode for ASCII HEX
htmlEntities.ASCII_DEC(input) | Decode for ASCII DEC

Module option:

String                              | Default        | Info                     |
------------------------------------|----------------|--------------------------|
error_msg_htmlEntities              | false          | View log of erros
debug_htmlEntities                  | false          | Print output
ASCII_htmlEntities                  | true           | Decode for entities ASCII
utf8_htmlEntities                   | true           | Force utf8 for <= lua5.2
register_global_module_htmlEntities | false          | Register module global
global_module_name_htmlEntities     | "htmlEntities" | Name (global module)


## Pages
Module [file](https://github.com/TiagoDanin/htmlEntities-for-lua/blob/master/src/htmlEntities.lua)

Makefile [file](https://github.com/TiagoDanin/htmlEntities-for-lua/blob/master/Makefile)

Example [file](https://github.com/TiagoDanin/htmlEntities-for-lua/blob/master/example/example.lua)

Suggestions and Support [New Issue](https://github.com/TiagoDanin/htmlEntities-for-lua/issues/new)

For stable versions to access [Releases](https://github.com/TiagoDanin/htmlEntities-for-lua/releases)


## LICENSE
The MIT License [(MIT)](https://github.com/TiagoDanin/htmlEntities-for-lua/blob/master/LICENSE)

---
>Copyright (c) 2016 Tiago Danin
