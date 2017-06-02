# Use git aware prompt from https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# Format of git aware prompt and colors
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Format of sudo prompt
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

# Location of shell path
export PATH="/usr/local/bin:$PATH"

# Show dot files with ls
alias ls='ls -a'

# Git aliases
alias gst='git status'
alias gap='git add --patch'
alias co='checkout'
