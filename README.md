# `D2SQLCipher`

This is a small wrapper around SQLite3/SQLCipher for the D programming language.
It wraps the C API in an idiomatic manner and handles built-in D types and
`Nullable!T` automatically.

## `dub` configurations

- **`vanilla`** (the default): use already installed version of vanilla SQLite. Set the right path for the SQLite library in your project's `dub.json` file using the `lflags` setting:

```json
    "lflags": ["-L/path/to/lib"]
```

- **`sqlcipher`**: use already installed version of SQLCipher. Set the right path for the SQLCipher library in your project's `dub.json` file using the `lflags` setting:

```json
    "lflags": ["-L/path/to/lib"]
```

- **`no-lib`**: you manage linking SQLite yourself.

Set the right configuration for you project in its `dub.json` file using the `subConfigurations` setting, e.g.:

```json
    "subConfigurations": {
        "d2sqlite3": "all-included"
    }
```

## Library versions

These versions can be used to build the library:

- `SqliteEnableColumnMetadata`: to enable corresponding special methods of `Row`.
- `SqliteEnableUnlockNotify`: to enable SQLite's builtin unlock notification mechanism.
- `SqliteFakeUnlockNotify`: to emulate an unlock notification mechanism.

## C binding generation

The D binding file `sqlite3.d` is generated from the C header file `sqlite3.h`, using [jacob-carlborg/dstep](https://github.com/jacob-carlborg/dstep). I try to keep it up to date.
