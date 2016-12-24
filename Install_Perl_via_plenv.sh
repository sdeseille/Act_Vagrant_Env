
cd /home/vagrant

echo "Install perl-build in order to simplify the process of installing Perl versions"
git clone git://github.com/tokuhirom/Perl-Build.git /home/vagrant/.plenv/plugins/perl-build/

echo "Build Perl 5.12.4 version needed by Act"
plenv install -j 9 -D usethreads -D man1dir=none -D man3dir=none 5.12.4

echo "Rebuild the shim executables. To do anytime you install Perl executable" 
plenv rehash

echo "Set Perl version globaly"
plenv global 5.12.4

echo "Install cpanm utility"
plenv install-cpanm

