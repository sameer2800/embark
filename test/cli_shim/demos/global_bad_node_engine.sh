say "$(cat << 'MSG'

If the global embark's package.json does not specify a valid node engine then
report warning and continue

MSG
)"

cd ~/working/embark
nac lts
json -I -f package.json -e 'this.engines.node=">-8.11.3"' &> /dev/null
cd ~/embark_demo

bash -i << 'DEMO'
embark version
DEMO

nac default
cd ~/working/embark
git stash &> /dev/null
cd ~
