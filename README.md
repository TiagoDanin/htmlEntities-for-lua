## #{htmlEntities for lua}
**Module for lua, decoding html entities :)**

Module for decoding of text using entities html

or encode of text to entities html :V


## Requires
Written for Lua5.x


## Setup
Use the terminal(luarocks) `$ `

Or Makefile(Debian):

Install for all (lua5.x) `$ make all`

Remove for all (lua5.x) `$ make unistallall`

To install only for a single `$ make install5.x`

The same goes for remove `$ make unistall5.x`

*Only available from the releases 0.3.1*


## Releases
[htmlEntities-for-lua BETA](https://github.com/TiagoDanin/htmlEntities-for-lua/tree/master)

[htmlEntities-for-lua V0.1.0](https://github.com/TiagoDanin/htmlEntities-for-lua/releases/tag/1.0.1)

[htmlEntities-for-lua V0.4.0](https://github.com/TiagoDanin/htmlEntities-for-lua/releases/tag/0.4.0)

[htmlEntities-for-lua V0.3.1](https://github.com/TiagoDanin/htmlEntities-for-lua/releases/tag/0.3.1)

[htmlEntities-for-lua V0.2.0](https://github.com/TiagoDanin/htmlEntities-for-lua/releases/tag/0.2)

[htmlEntities-for-lua V0.1.0](https://github.com/TiagoDanin/htmlEntities-for-lua/releases/tag/0.1)


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
