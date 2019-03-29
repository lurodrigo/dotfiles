# paths relative to home folder
declare -A resources=(
    ["i3 config"]=".i3"
    ["kitty config"]=".config/kitty"
    ["Xresources"]=".Xresources"
    ["zshrc"]=".zshrc"
    ["zfunctions"]=".zfunctions"
    ["screen layouts"]=".screenlayout"
)

if [ ! -d "home" ]; then
    mkdir "home"
fi

blue=$(tput setaf 4)
normal=$(tput sgr0)

collect() {
    for resource_name in "${!resources[@]}"
    do
        location=${resources[$resource_name]}
        printf "${blue}\nCollecting $resource_name at ~/$location...${normal}\n"
        rsync -azvh ~/$location home/`dirname $location`
    done
}

collect
