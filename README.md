# dotfiles
This is my dotfiles repo, which may not be fancy, but it's mine.

## When setting up from scratch
Over time and owning a number of laptops, I find it takes a little time to get everything set up the way that I like, and I don't always remember all the steps or the most efficient way to get things installed and configured for the first time. Good thing I wrote this guide for myself! Thanks, past me.

### Change computer name
System Preferences > Sharing > Computer Name

### Re-map Kinesis Keyboard Keys
System Preferences > Keyboard > Modifier Keys. Plug in the Kinesis and make sure it's the keyboard selected when changing modifier keys.

![CleanShot 2021-04-15 at 08 39 59](https://user-images.githubusercontent.com/1529366/114905837-06115880-9ddf-11eb-87e4-09438caab825.png)


## Command Line Tools & Code Editor

### Install iTerm
https://iterm2.com/

### Show hidden files
$ `defaults write com.apple.Finder AppleShowAllFiles true`

$ `killall Finder`

### Install MacVim
You'll need to install MacVim, which is easy to do using [Homebrew](https://brew.sh/). 
1. Install homebrew using the curl command here: http://brew.sh
1. Run `export PATH=/usr/local/bin:$PATH`
1. Run `brew update`
1. Run `brew install vim && brew install macvim`
1. Run `brew link macvim`

Now you have the latest versions of vim and macvim managed by brew. Run `brew update && brew upgrade` every once in a while to upgrade them. This includes the installation of the CLI mvim and the mac application (which both point to the same thing).

### Save and source `.bash_profile`
1. Clone this dotfiles repo by running `git clone git@github.com:glynnis/dotfiles.git`
1. Move the [bash profile](https://github.com/glynnis/dotfiles/blob/master/.bash_profile) to `~`.
1. Clone [Jimeh's git aware prompt](https://github.com/jimeh/git-aware-prompt) by running
  ```
  cd ~/.bash
  git clone git://github.com/jimeh/git-aware-prompt.git
  ```
1. Run `source ~/.bash_profile` to start using the profile.

Using this profile takes care of the following:
1. Shows the git brach name in the terminal prompt, with colors.
1. Includes dot files when using `ls`
1. Creates the git aliases `gst` for `git status`, `gap` for `git add --patch` and `co` for `checkout`.

### Configure Vim preferences
1. Copy `.vimrc` file and `.vim/` directory to `~`. `.vimrc` sets the solr dark color theme for MacVim that's housed in the `.vim/colors/` directory, as well as setting things like typeface, spaces vs. tabs, default line width, showing tabs as characters, etc.
1. Install [Vundle](https://github.com/VundleVim/Vundle.vim). Run `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`.
1. Launch MacVim witn `mvim .` and run `:PluginInstall`
