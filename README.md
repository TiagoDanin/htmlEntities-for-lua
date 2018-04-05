# htmlEntities for Lua [![Build Status](https://travis-ci.org/TiagoDanin/htmlEntities-for-lua.svg?branch=master)](https://travis-ci.org/TiagoDanin/htmlEntities-for-lua) [![Luarocks](https://img.shields.io/badge/Luarocks-html--entities-yellow.svg)](http://luarocks.org/modules/tiagodanin/html-entities)

HTML entities decoding/encoding

## Installation
Written for Lua5.3 but working with lua5.2 and 5.1

Use the luarocks in your terminal

`$ luarocks install html-entities`

## Using

### Example

```lua
htmlEntities = require('htmlEntities')
print(htmlEntities.name) --htmlEntities-for-lua
print(htmlEntities.encode('Tiago Danin :)')) --&#84;&#105;&#97;&#103;&#111;&#32;&#68;&#97;&#110;&#105;&#110;&#32;&#58;&#41;
print(htmlEntities.decode('&#84;&#105;&#97;&#103;&#111;&#32;&#68;&#97;&#110;&#105;&#110;&#32;&#58;&#41;')) --Tiago Danin :)
```

### Module
Function:

Function                       | Info   |
------------------------------ |------- |
htmlEntities                   | Return table with about module and version
htmlEntities.decode(input)     | Decode html entities to text
htmlEntities.encode(input)     | Encode text to html entities (in ASCII) NOTE: Emoji is not supported here
htmlEntities.ASCII_HEX(input)  | Decode for ASCII HEX
htmlEntities.ASCII_DEC(input)  | Decode for ASCII DEC

Option:

String                               | Default         | Info                      |
------------------------------------ |---------------- |-------------------------- |
error_msg_htmlEntities               | false           | View log of erros
debug_htmlEntities                   | false           | Print output
ASCII_htmlEntities                   | true            | Decode of entities in ASCII
register_global_module_htmlEntities  | false           | Register module as global
global_module_name_htmlEntities      | "htmlEntities"  | Name in global mode

## Pages
Stable versions in [Releases](https://github.com/TiagoDanin/htmlEntities-for-lua/releases) or [LuaRocks](http://luarocks.org/modules/tiagodanin/html-entities)

Suggestions and Support >> [New Issue](https://github.com/TiagoDanin/htmlEntities-for-lua/issues/new)

WebSite >> [TiagoDanin.github.io/htmlEntities-for-lua](https://TiagoDanin.github.io/htmlEntities-for-lua/)

## License

MIT by Tiago Danin
