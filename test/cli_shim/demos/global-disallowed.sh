say "$(cat << 'MSG'

Give a careful explanation...

MSG
)"

cd ~/embark_demo
nac lts

bash -i << 'DEMO'
embark_no_global=true embark version
embark_no_global=true embark version --allow-global
embark_no_global_shim=true embark version --shim
embark_no_global_shim=true embark version --shim --allow-global-shim
DEMO

nac default
cd ~
