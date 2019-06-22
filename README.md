# htmlEntities for Lua

[![Build Status](https://travis-ci.org/TiagoDanin/htmlEntities-for-lua.svg?branch=master)](https://travis-ci.org/TiagoDanin/htmlEntities-for-lua) [![Luarocks](https://img.shields.io/badge/Luarocks-html--entities-yellow.svg)](http://luarocks.org/modules/tiagodanin/html-entities)

HTML entities decoding/encoding

Written for Lua5.3 but working with lua5.x!

## Features

- Fast!
- No dependencies!
- Easy to implement!

## Installation

Module available through the [LuaRocks](https://luarocks.org/). It can be installed using the `luarocks` command line tools.

```sh
# LuaRocks
luarocks install html-entities
```

## Example

```lua
htmlEntities = require('htmlEntities')
print(htmlEntities.name) -- htmlEntities-for-lua
print(htmlEntities.encode('Tiago Danin :)')) -- &#84;&#105;&#97;&#103;&#111;&#32;&#68;&#97;&#110;&#105;&#110;&#32;&#58;&#41;
print(htmlEntities.decode('&#84;&#105;&#97;&#103;&#111;&#32;&#68;&#97;&#110;&#105;&#110;&#32;&#58;&#41;')) -- Tiago Danin :)
```

## Documentation

### API

Function                       | Info   |
------------------------------ |------- |
htmlEntities                   | Return table with information about module
htmlEntities.decode(input)     | Decode HTML entities
string:htmlDecode()            | Same as above
htmlEntities.encode(input)     | Encode in HTML entities (in ASCII) NOTE: Emoji is not supported here!
string:htmlEncode()            | Same as above
htmlEntities.ASCII_HEX(input)  | Decode ASCII HEX
htmlEntities.ASCII_DEC(input)  | Decode ASCII DEC

### Module Options

String                               | Default         | Info                      |
------------------------------------ |---------------- |-------------------------- |
error_msg_htmlEntities               | false           | View log of erros
debug_htmlEntities                   | false           | Print output
ASCII_htmlEntities                   | true            | Decode of entities in ASCII
register_global_module_htmlEntities  | false           | Register module as global
global_module_name_htmlEntities      | "htmlEntities"  | Name in global mode

## Tests

To run the test suite:

```sh
# Lua
lua tests/cli.lua
lua tests/test.lua
lua tests/travis.lua
```

## Contributors

Pull requests and stars are always welcome. For bugs and feature requests, please [create an issue](https://github.com/TiagoDanin/htmlEntities-for-lua/issues). [List of all contributors](https://github.com/TiagoDanin/htmlEntities-for-lua/graphs/contributors).

## License

[MIT](LICENSE) © [Tiago Danin](https://TiagoDanin.github.io)
