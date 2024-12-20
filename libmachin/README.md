# libmachin - A C++ library

The `libmachin` C++ library provides <SUMMARY-OF-FUNCTIONALITY>.


## Usage

To start using `libmachin` in your project, add the following `depends`
value to your `manifest`, adjusting the version constraint as appropriate:

```
depends: libmachin ^<VERSION>
```

Then import the library in your `buildfile`:

```
import libs = libmachin%lib{<TARGET>}
```


## Importable targets

This package provides the following importable targets:

```
lib{<TARGET>}
```

<DESCRIPTION-OF-IMPORTABLE-TARGETS>


## Configuration variables

This package provides the following configuration variables:

```
[bool] config.libmachin.<VARIABLE> ?= false
```

<DESCRIPTION-OF-CONFIG-VARIABLES>
