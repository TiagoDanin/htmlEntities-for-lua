CC      = gcc
INSTALL = install
TEST = test

PREFIX = /usr/local
SOURCES = src/htmlEntities.lua
LAST = /5.1
LUA = /5.2
BETA = /5.3

LUA_DIR = $(PREFIX)
LUA_LIBDIR = $(LUA_DIR)/lib/lua
LUA_SHAREDIR = $(LUA_DIR)/share/lua

msg_install = 'Requires permission of "root" to create the system directory'
msg_unistall = 'Requires permission of "root" to remove the system directory'
msg_end = "Files can be located in:'\n '$(LUA_LIBDIR)/*Version' and '$(LUA_SHAREDIR)/*Version'\nTo remove use '$ make unistall'"

install: all
unistall: unistallall

info:
	@echo -e '\e[31m \n Module for Lua'
	@echo -e '\e[32m \n Name:htmlEntities-for-lua\n Author TiagoDanin\n Version: 0.4.0\n License: MIT\n \e[0m'

test:
	@lua test.lua

installall: all
all:
	@echo 'Module for Lua'
	@echo $(msg_install)
	@sudo mkdir -p $(LUA_LIBDIR)$(LAST)
	@sudo cp -f $(SOURCES) $(LUA_LIBDIR)$(LAST)
	@sudo mkdir -p $(LUA_LIBDIR)$(LUA)
	@sudo cp -f $(SOURCES) $(LUA_LIBDIR)$(LUA)
	@sudo mkdir -p $(LUA_LIBDIR)$(BETA)
	@sudo cp -f $(SOURCES) $(LUA_LIBDIR)$(BETA)
	@sudo mkdir -p $(LUA_SHAREDIR)$(LAST)
	@sudo cp -f $(SOURCES) $(LUA_SHAREDIR)$(LAST)
	@sudo mkdir -p $(LUA_SHAREDIR)$(LUA)
	@sudo cp -f $(SOURCES) $(LUA_SHAREDIR)$(LUA)
	@sudo mkdir -p $(LUA_SHAREDIR)$(BETA)
	@sudo cp -f $(SOURCES) $(LUA_SHAREDIR)$(BETA)
	@echo $(msg_end)

5.1:
	@echo 'Module for Lua5.1'
	@echo $(msg_install)
	@sudo mkdir -p $(LUA_LIBDIR)$(LAST)
	@sudo cp -f $(SOURCES) $(LUA_LIBDIR)$(LAST)
	@sudo mkdir -p $(LUA_SHAREDIR)$(LAST)
	@sudo cp -f $(SOURCES) $(LUA_SHAREDIR)$(LAST)
	@echo $(msg_end)

5.2:
	@echo 'Module for Lua5.2'
	@echo $(msg_install)
	@sudo mkdir -p $(LUA_LIBDIR)$(LUA)
	@sudo cp -f $(SOURCES) $(LUA_LIBDIR)$(LUA)
	@sudo mkdir -p $(LUA_SHAREDIR)$(LUA)
	@sudo cp -f $(SOURCES) $(LUA_SHAREDIR)$(LUA)
	@echo $(msg_end)

5.3:
	@echo 'Module for Lua5.3'
	@echo $(msg_install)
	@sudo mkdir -p $(LUA_LIBDIR)$(BETA)
	@sudo cp -f $(SOURCES) $(LUA_LIBDIR)$(BETA)
	@sudo mkdir -p $(LUA_SHAREDIR)$(BETA)
	@sudo cp -f $(SOURCES) $(LUA_SHAREDIR)$(BETA)
	@echo $(msg_end)

unistall5.1:
	@echo $(msg_install)
	@sudo rm -f $(LUA_LIBDIR)$(LAST)/htmlEntities.lua
	@sudo rm -f $(LUA_LIBDIR)$(LAST)/htmlEntities.lua

unistall5.2:
	@echo $(msg_unistall)
	@sudo rm -f $(LUA_LIBDIR)$(LUA)/htmlEntities.lua
	@sudo rm -f $(LUA_SHAREDIR)$(LUA)/htmlEntities.lua

unistall5.3:
	@echo $(msg_unistall)
	@sudo rm -f $(LUA_LIBDIR)$(BETA)/htmlEntities.lua
	@sudo rm -f $(LUA_SHAREDIR)$(BETA)/htmlEntities.lua

unistallall:
	@echo $(msg_unistall)
	@sudo rm -f $(LUA_LIBDIR)$(LAST)/htmlEntities.lua
	@sudo rm -f $(LUA_LIBDIR)$(LUA)/htmlEntities.lua
	@sudo rm -f $(LUA_LIBDIR)$(BETA)/htmlEntities.lua
	@sudo rm -f $(LUA_SHAREDIR)$(LAST)/htmlEntities.lua
	@sudo rm -f $(LUA_SHAREDIR)$(LUA)/htmlEntities.lua
	@sudo rm -f $(LUA_SHAREDIR)$(BETA)/htmlEntities.lua
