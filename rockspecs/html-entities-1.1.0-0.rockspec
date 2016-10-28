package = "html-entities"
version = "1.1.0-0"

source = {
	url = "https://github.com/TiagoDanin/htmlEntities-for-lua/archive/1.1.0.tar.gz",
	dir = "htmlEntities-for-lua-1.1.0"

}

description = {
	summary = "Module for lua, decoding html entities :)",
	detailed = "Module for decoding of text using entities html or encode of text to entities html :V",
	homepage = "https://TiagoDanin.github.io/htmlEntities-for-lua/",
	maintainer = "Tiago Danin <TiagoDanin@outlook.com>",
	license = "GPLv3"
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
