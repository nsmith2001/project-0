#
# Recipes for building and installing projects.
# We will always have a recipe called "install" and
# one called "run". (At least, that's the plan.)
#
# Instruct the installer to copy your credentials to the
# appropriate location.

install:
	install credentials.ini ./hello

run:
	@(cd hello; python3 hello.py)

clean:
	rm ./hello/credentials.ini
