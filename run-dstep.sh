if [ ! -f "$1" ]; then
  echo "Usage: $0 <sqlite header file>"
  exit 1
fi

dstep --package "d2sqlite3" --skip SQLITE_STDCALL --global-attribute={nothrow,@nogc} --space-after-function-name=false -o source/d2sqlite3/sqlite3.d $1
