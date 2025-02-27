$DOTFILE = "I:/dotfile_windows"
$EDITOR = "nvim"

Set-Alias -Name zip -Value Compress-Archive
Set-Alias -Name vim -Value nvim

function sync_dotfiles() {
    cp $HOME/.wezterm.lua $DOTFILE -Recurse -force
    cp $HOME/.gitconfig $DOTFILE -Recurse -force
    cp $PROFILE $DOTFILE -Recurse -force
    cp $HOME/komorebi.json $DOTFILE -Recurse -force
    cp $HOME/komorebi.bar.json $DOTFILE -Recurse -force
    cp $HOME/AppData/Local/nvim/ $DOTFILE -Recurse -force
    cp $HOME/AppData/Local/lf/lfrc $DOTFILE -Recurse -force
}
