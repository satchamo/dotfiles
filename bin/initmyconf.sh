mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ssh-keygen -N "" -C "Github" -f $HOME/.ssh/github.key
cat $HOME/.ssh/github.key.pub
echo "Add that to your github account. Then press enter"
read
GIT_SSH_COMMAND="ssh -i ~/.ssh/github.key" git clone --separate-git-dir=$HOME/.myconf git@github.com:satchamo/dotfiles.git $HOME/myconf-tmp
rm -r ~/myconf-tmp/
git --git-dir=$HOME/.myconf/ --work-tree=$HOME reset --hard HEAD
git --git-dir=$HOME/.myconf/ --work-tree=$HOME config status.showUntrackedFiles no
chmod 644 $HOME/.ssh/config
