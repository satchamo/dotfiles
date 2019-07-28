mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ssh-keygen -N "" -C "Github" -f $HOME/.ssh/github.key
cat $HOME/.ssh/github.key.pub
echo "Add that to your github account. Then press enter"
read
git clone --separate-git-dir=$HOME/.myconf git@github.com:satchamo/dotfiles.git $HOME/myconf-tmp
rm -r ~/myconf-tmp/


