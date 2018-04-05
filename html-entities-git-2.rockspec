package = "html-entities"
version = "git-1"

source = {
	url = "https://github.com/TiagoDanin/htmlEntities-for-lua.git"
}

description = {
	summary = "Module for lua, decoding html entities :)",
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
