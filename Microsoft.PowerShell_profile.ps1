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

function gbranch() {
    git checkout $(git branch | select-string -pattern '\*' -NotMatch | fzf).trim()
}

function fd() {
    param (
        [string]$dir = ".",
        [int]$depth = 2,
        [int]$worker = 0
    )
    cd $(shutil --walker --walker-depth $depth --walker-worker $worker $dir)
}

Set-PSReadLineKeyHandler -Chord Alt+c -ScriptBlock {
    cd $(shutil --walker --walker-depth 2 --walker-worker 0 ".")
}

Set-PSReadLineKeyHandler -Chord Alt+j -ScriptBlock {
    cd $(shutil --walker --walker-depth 3 --walker-worker 0 "D:/codebase/hd2_asset_db" "D:/sfx_spec" "D:/codebase/migration/hd2-audio-modder" "D:/sfx")
}

Set-PSReadLineKeyHandler -Chord Alt+r -ScriptBlock {
    Get-History | Select-Object -ExpandProperty CommandLine | fzf | Set-Clipboard
    [System.Windows.Forms.SendKeys]::SendWait("^v")
}

Set-PSReadLineKeyHandler -Key Ctrl+p -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key Ctrl+n -Function HistorySearchForward 
