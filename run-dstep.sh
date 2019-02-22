if [ ! -f "$1" ]; then
  echo "Usage: $0 <sqlite header file>"
  exit 1
fi

cargs=${@:2}
dstep --package "d2sqlcipher" --skip SQLITE_STDCALL --global-attribute={nothrow,@nogc} --space-after-function-name=false -o source/d2sqlcipher/sqlite3.d "$1" $cargs
