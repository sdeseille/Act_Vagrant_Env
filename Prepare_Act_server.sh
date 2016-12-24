echo "Start installing prerequesites"
/vagrant/Install_prerequesites.sh
echo "End installing prerequesites"

echo "Start preparing vagrant env to use plenv"
su - vagrant -c "/vagrant/Prepare_vagrant_env_to_use_plenv.sh"
echo "End preparing vagrant en to use plenv"

echo "Start installing Perl via plenv"
su - vagrant -c "/vagrant/Install_Perl_via_plenv.sh"
echo "End installing Perl via plenv"
