CC      = gcc
INSTALL = install

PREFIX = /usr/local
SOURCES = src/htmlEntities.lua
LAST = /5.1
LUA = /5.2
BETA = /5.3

LUA_DIR = $(PREFIX)
LUA_SHAREDIR = $(LUA_DIR)/share/lua
LUA_LIBDIR = $(LUA_DIR)/lib/lua

install: 5.2
	
5.1:
	@echo 'Libs for Lua5.1'
	@echo 'Requirement permission "root" to create directory in the system'
	@sudo mkdir -p $(LUA_LIBDIR)$(LAST)
	@sudo mkdir -p $(LUA_SHAREDIR)$(LAST)
	@cp -f $(SOURCES) $(LUA_LIBDIR)$(LAST)
	@cp -f $(SOURCES) $(LUA_SHAREDIR)$(LAST)
	@echo 'Files can be located in:'
	@echo "'$(LUA_LIBDIR)' and '@(LUA_SHAREDIR)'"
	@echo "To remove use '$ make unistall'"

5.2:
	@echo 'Libs for Lua5.2'
	@echo 'Requirement permission "root" to create directory in the system'
	@sudo mkdir -p $(LUA_LIBDIR)$(LUA)
	@sudo mkdir -p $(LUA_SHAREDIR)$(LUA)
	@cp -f $(SOURCES) $(LUA_LIBDIR)$(LUA)
	@cp -f $(SOURCES) $(LUA_SHAREDIR)$(LUA)
	@echo 'Files can be located in:'
	@echo "'$(LUA_LIBDIR)' and '@(LUA_SHAREDIR)'"
	@echo "To remove use '$ make unistall'"

5.3:
	@echo 'Libs for Lua5.3'
	@echo 'Requirement permission "root" to create directory in the system'
	@sudo mkdir -p $(LUA_LIBDIR)$(BETA)
	@sudo mkdir -p $(LUA_SHAREDIR)$(BETA)
	@cp -f $(SOURCES) $(LUA_LIBDIR)$(BETA)
	@cp -f $(SOURCES) $(LUA_SHAREDIR)$(BETA)
	@echo 'Files can be located in:'
	@echo "'$(LUA_LIBDIR)' and '@(LUA_SHAREDIR)'"
	@echo "To remove use '$ make unistall'"

unistall:
	@sudo rm -f $(LUA_LIBDIR)$(LUA)/htmlEntities.lua
	@sudo rm -f $(LUA_SHAREDIR)$(LUA)/htmlEntities.lua