package = "html-entities"
version = "0.3.1-0"

source = {
   url = "https://github.com/TiagoDanin/htmlEntities-for-lua/archive/0.3.1.tar.gz",
}

description = {
  summary = "Module for lua, decoding htmlEntities.",
  detailed = [[
  Module for decoding of text using entities html,
  or encode of text to entities html.
  ]],
  license = "MIT",
  homepage = "https://github.com/TiagoDanin/htmlEntities-for-lua/",
  maintainer = "Tiago Danin"
}

dependencies = {
  "lua >= 5.1",
}

build = {
   type = "make"
}
