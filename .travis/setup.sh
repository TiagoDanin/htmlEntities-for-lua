#! /bin/bash
#Based https://github.com/Yonaba/30log https://github.com/Yonaba/30log/tree/master/.travis

export PATH=${PATH}:$HOME/.lua:$HOME/.local/bin:${TRAVIS_BUILD_DIR}/install/luarocks/bin
PLATFORM="linux";
set -eufo pipefail

LUA_HOME_DIR=$TRAVIS_BUILD_DIR/install/lua
LR_HOME_DIR=$TRAVIS_BUILD_DIR/install/luarocks
mkdir $HOME/.lua
mkdir -p "$LUA_HOME_DIR"

if [ "$LUA" == "lua5.1" ]; then
	curl http://www.lua.org/ftp/lua-5.1.5.tar.gz | tar xz
	cd lua-5.1.5;
elif [ "$LUA" == "lua5.2" ]; then
	curl http://www.lua.org/ftp/lua-5.2.4.tar.gz | tar xz
	cd lua-5.2.4;
elif [ "$LUA" == "lua5.3" ]; then
	curl http://www.lua.org/ftp/lua-5.3.2.tar.gz | tar xz
	cd lua-5.3.2;
fi

perl -i -pe 's/-DLUA_COMPAT_(ALL|5_2)//' src/Makefile
make $PLATFORM
make INSTALL_TOP="$LUA_HOME_DIR" install;

ln -s $LUA_HOME_DIR/bin/lua $HOME/.lua/lua
ln -s $LUA_HOME_DIR/bin/luac $HOME/.lua/luac;


cd $TRAVIS_BUILD_DIR
lua -v
LUAROCKS_BASE=luarocks-$LUAROCKS
curl --location http://luarocks.org/releases/$LUAROCKS_BASE.tar.gz | tar xz

cd $LUAROCKS_BASE
./configure --with-lua="$LUA_HOME_DIR" --prefix="$LR_HOME_DIR"
make build && make install
ln -s $LR_HOME_DIR/bin/luarocks $HOME/.lua/luarocks

cd $TRAVIS_BUILD_DI
luarocks --version
rm -rf $LUAROCKS_BASE

if [ "$LUA" == "lua5.1" ]; then
	rm -rf lua-5.1.5;
elif [ "$LUA" == "lua5.2" ]; then
	rm -rf lua-5.2.4;
elif [ "$LUA" == "lua5.3" ]; then
	rm -rf lua-5.3.2;
fi

eval `$HOME/.lua/luarocks path`
