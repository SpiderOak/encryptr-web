# Encryptr website

## Dependencies

On all platforms, `docker` is required.

On OSX, `boot2docker` is a necessary dependency of `docker`.

This assumes the latest version of both.

## Usage

To build the Docker container:

````
make build
````

To run the container and serve the website:

````
make serve
````

For both:

````
make
````

For both upon filechange in /src:

````
make watch
````

If you need to kill the serving container (automatically run on other commands):

````
make kill
````

In the interest of multi-platform ability,
the use of `sudo` is required in the Makefile,
so you will have to type in an administrator password.

If you are on OS X, you will need to run `boot2docker ip`
in order to see where it is served from.

It is currently configured to serve on port 80,
but there are instructions to enable SSL in the Dockerfile.

