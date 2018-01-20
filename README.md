## htmlEntities for lua  [![Build Status](https://travis-ci.org/TiagoDanin/htmlEntities-for-lua.svg?branch=master)](https://travis-ci.org/TiagoDanin/htmlEntities-for-lua) [![GPLv3](https://img.shields.io/aur/license/yaourt.svg?maxAge=2592000)](https://github.com/TiagoDanin/htmlEntities-for-lua/blob/master/LICENSE) [![Luarocks](https://img.shields.io/badge/Luarocks-html--entities-yellow.svg)](http://luarocks.org/modules/tiagodanin/html-entities)
**Module for lua, decoding html entities :)**

Module for decoding of text using entities html

or encode of text to entities html :V


## Requires
Written for Lua5.3 but working with lua5.2 and 5.1

## Setup
Use the terminal(luarocks) `$ luarocks install html-entities`

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
register_global_module_htmlEntities | false          | Register module global
global_module_name_htmlEntities     | "htmlEntities" | Name (global module)


## Pages
Module [file](https://github.com/TiagoDanin/htmlEntities-for-lua/blob/master/src/htmlEntities.lua)

Suggestions and Support [New Issue](https://github.com/TiagoDanin/htmlEntities-for-lua/issues/new)

For stable versions to access [Releases](https://github.com/TiagoDanin/htmlEntities-for-lua/releases)


## LICENSE
GNU GENERAL PUBLIC LICENSE V3 [(GPL)](https://github.com/TiagoDanin/htmlEntities-for-lua/blob/master/LICENSE)

---
> By Tiago Danin
