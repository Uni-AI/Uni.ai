subprojects=(quickstart ssh-key-manager vagrant)

uninstall(){
for p in ${subprojects[@]}; do
pip3 uninstall uai.$p -y
done
}

build(){
for p in ${subprojects[@]}; do
echo "building $p"
cd $p
python3 -m build
cd -
done
}

development_mode_install(){
for p in ${subprojects[@]}; do
echo "building $p"
cd $p
pip3 install -e .
cd -
done
}

build
development_mode_install
#uninstall
