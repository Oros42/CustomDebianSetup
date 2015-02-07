echo "locales	locales/default_environment_locale	select	fr_FR.UTF-8" | debconf-set-selections
echo "locales	locales/locales_to_be_generated	multiselect	fr_FR.UTF-8 UTF-8" | debconf-set-selections
apt-get install -y -q --force-yes locales
dpkg-reconfigure -u locales
