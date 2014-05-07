emily-lime
==========

Emily Lime typeface website

# Emily Lime
This is the code for emily-lime. Target version is Rails 4.0.0.

In the terminal, change to the directory where you want your development apps to be, e.g.:
cd ~/Sites/

## clone RT from Github
git clone git@github.com:anglinj/emily-lime.git

## cd into it
cd emily-lime

## use ruby 2.0.0
rvm use 2.0.0@emily-lime --create

## create .rvmrc and trust it
echo 'rvm 2.0.0@emily-lime' > .rvmrc && rvm rvmrc trust

## run bundler
bundle

## create and migrate dev database
rake db:create && rake db:migrate

## create pow symlink
ln -s "`pwd`" ~/.pow/emily-lime

## create .powrc (cut/paste the whole block through the EOF)
cat <<EOF > .powrc
if [ -f "\$rvm_path/scripts/rvm" ] && [ -f ".rvmrc" ]; then
  source "\$rvm_path/scripts/rvm"
  source ".rvmrc"
fi
EOF

## see if it works in a browser
open http://emily-lime.dev/
