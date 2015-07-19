source $stdenv/setup
env | sort
tar xvfz $src
echo cd $name
cd $name
echo $out >conf-home
echo cc -O2 -Wimplicit -Wunused -Wcomment -Wchar-subscripts -Wuninitialized -Wshadow -Wcast-qual -Wcast-align -Wwrite-strings >conf-cc
echo cc -s >conf-ld
make


