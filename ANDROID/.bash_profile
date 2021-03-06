
# modifying the bash prompt to something simpler
# PS1="\u@\W\$"
color_prompt=yes
if [ "$color_prompt" = yes ]; then
  PS1="\[\033[35m\]@\W\[\033[37m\]\$ "
else
  PS1="@\W\$ "
fi

# modifying 'ls' command to default display all directory info
alias ls='ls -aFG'
alias l='ls'
# -a for showing hidden files
# -F for files vs directories
# -G for colors 

# GIT
alias g='git'
alias gb='git branch'
alias gc='git checkout' 

alias gp='git pull'
alias gf='git fetch' 
alias ga='git add' 
alias gs='git status'
alias gd='git diff' 
alias gdc='git diff --cached' #// to see staged (added) changes (hunk)

#// to see a list of stashed patches
alias gslist='echo "// git stash list"; git stash list'
alias gsshow='echo "// git stash show -p"; git stash show -p'
# git stash show -p 3 // to see the #4 stashed patch/changes

# git show stash@{0} // to show tracked files stashed in index 0
# git show stash@{0}^3 // to show untracked files stashed in index 0

alias gspush='echo "// git stash push"; git stash push'
# git stash push -m "message" <path>
alias gsdrop='echo "// git stash drop <number>"; git stash drop '

alias gf='git fetch'
#alias gp='git pull'
# // to rebase from the remote branch
# git fetch
# git rebase origin/master

alias gl='git log'
# git log // to see if your current changes match the remote

# // to see which commits are on your master which you haven't yet pushed
# git log origin/master..master
alias gld='echo "// git log diff b/w remote"; git log origin/master..master'

# // to see which commits are on origin/master but not yet on master
# git log master..origin/master

# // git log graph
alias glg='git log --pretty=format:"%C(dim white)%d%C(reset) %s %C(dim white)[%h %ae %cr]%C(reset)" --graph'

# // git log patches to see the diffs in each
alias glp='echo "// git log -p"; git log -p'
# // can add --author='Reinhardt' to see changes  by specific people
# // just another alias to make t easier to view changes
alias glshow='echo "// git log -p"; git log -p'

# // to reset to a previous commit but careful as you lose everything 
# git reset --hard <commit-ID || HEAD>


alias cdh='cd ~'
alias cdx='cd /data/data/com.termux/files/home/storage/downloads/_esc'

alias cdz='cd /data/data/com.termux/files/home/zero-one'

# alias to open neovim quickly
alias n='nvim'
alias nv='nvim'


alias t='tmux '
alias tls='tmux ls'
alias tns='sh ~/dotfiles/tmux-new-session.sh'
alias tas='tmux attach-session -t '
alias trs='tmux rename-session -t '




