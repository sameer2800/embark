say "$(cat << 'MSG'

Give a careful explanation...

MSG
)"

cd ~/embark_demo
nac lts
json -I -f package.json -e \
     'this.scripts["embark"] = "embark $@"' \
    &> /dev/null

bash -i << 'DEMO'
embark_no_global=true npm run embark version
embark_no_global=true npm run embark version -- --allow-global
embark_no_global_shim=true npm run embark version -- --shim
embark_no_global_shim=true npm run embark version -- --shim --allow-global-shim
DEMO

nac default
cd ~
