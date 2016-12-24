
cd /home/vagrant

echo "Check out plenv into ~/.plenv" 
git clone git://github.com/tokuhirom/plenv.git /home/vagrant/.plenv

echo "prepare path to use plenv utility"
echo 'export PATH="$HOME/.plenv/bin:$PATH"' >> /home/vagrant/.bash_profile
echo 'eval "$(plenv init -)"' >> /home/vagrant/.bash_profile

