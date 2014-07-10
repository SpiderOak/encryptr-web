# Dependencies

On all platforms, `docker` is required.

On OSX, `boot2docker` is a necessary dependency of `docker`.

This assumes the latest version of both.

# Usage

To build:

````
make build
````

To serve:

````
make serve
````

For both:

````
make
````

In the interest of multi-platform ability,
the use of `sudo` is required in the Makefile,
so you will have to type in an administrator password.
