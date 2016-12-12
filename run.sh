source test.sh

function install_filezilla () {
  sudo apt-get install filezilla
}

function install_ibus () {
  sudo apt-get install ibus ibus-m17n m17n-db m17n-contrib ibus-gtk
  sudo apt-get install ibus-unikey
  ibus-daemon -d
  ibus-setup
}

function install_all () {
  install_sublime3
  install_rails4
  install_mysql
  install_postgrest
  install_ibus
  echo "system setting -> language support"
}

echo "-------------------------"
echo "1: sublime 3"
echo "2: rails 4"
echo "3: mysql"
echo "4: postgres"
echo "5: filezilla"
echo "6: ibus"
echo "0: all"
echo "-------------------------"
echo "Chon phan mem:"
read option

case "$option" in
 "1" )
   sublime3
   ;;
 "2" )
   install_rails4
   ;;
  "3" )
    install_mysql
  ;;
  "4" )
    install_postgrest
  ;;
  "5" )
    install_filezilla
  ;;
  "6" )
    install_ibus
  ;;
  "0" )
    install_all
  ;;

esac;
