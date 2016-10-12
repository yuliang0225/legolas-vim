#!/usr/bin/env bash
# Init vim in Mac OSX
function echoo {
    echo -e "\n\033[32m $1 \033[0m"
}

# backup
echoo ">>> Backing up old vim configs"

today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc; do 
    [ -e $i ] && sudo mv $i $i.$today; 
done

echoo ">>> Install cmake using brew ..."
brew install cmake

echoo ">>> install vim using brew ..."
brew install vim

echoo ">>> Set up Vundle ..."
sudo rm -rf ~/.vim/bundle/Vundle.vim
sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim