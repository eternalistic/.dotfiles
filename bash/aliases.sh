# CD aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# NPM Aliases
alias nrb="npm run build"
alias nrs="npm run start"
alias nrt="npm run test"
alias nrtw="npm run test:watch"
alias nrd="npm run deploy"

# Directory Aliases
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias wk="cd ~/Work"
alias pra="cd ~/Practice"
alias sp="cd ~/SideProjects"
alias blog="cd ~/Work/blog"

# List all, long form
alias la="ls -la"

# Copy PWD to Clipboard
alias cpwd="pwd | tr -d '\n' | pbcopy && echo 'pwd copied to clipboard'"

# Git command aliases that need to run from bash, not gitconfig
alias pl="git copl $(get_git_branch)"

# Recursively delete `.DS_Store` files
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"

# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Launch VSCode in teaching mode
alias teach="code --extensions-dir ~/code_profiles/egghead/exts --user-data-dir ~/code_profiles/egghead/data"

# Lando shortcuts.
alias lando:pull-db-dev='lando pull --code=none --database=dev --files=none && lando drush en stage_file_proxy -y'
alias lando:pull-db-staging='lando pull --code=none --database=staging --files=none && lando drush en stage_file_proxy -y'
alias lando:pull-db-live='lando pull --code=none --database=live --files=none && lando drush en stage_file_proxy -y'
alias lando:pull-files-dev='lando pull --code=none --database=none --files=dev'
alias lando:pull-files-staging='lando pull --code=none --database=none --files=staging'
alias lando:pull-files-live='lando pull --code=none --database=none --files=live'
alias lando:localdev='lando drush en stage_file_proxy -y && lando drush variable-set theme_debug 1 && lando drush vset preprocess_js 0 -y && lando drush vset preprocess_css 0 -y && lando drush cc all'
