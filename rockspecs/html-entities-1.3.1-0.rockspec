package = "html-entities"
version = "1.3.1-0"

source = {
	url = "https://github.com/TiagoDanin/htmlEntities-for-lua/archive/1.3.1.tar.gz",
	dir = "htmlEntities-for-lua-1.3.1"
}

description = {
	summary = "Module for lua, decoding HTML entities :)",
	detailed = "HTML entities decoding/encoding",
	homepage = "https://TiagoDanin.github.io/htmlEntities-for-lua/",
	maintainer = "Tiago Danin <TiagoDanin@outlook.com>",
	license = "MIT"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		["htmlEntities"] = "src/htmlEntities.lua"
	}
}
