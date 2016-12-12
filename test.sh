function wait_minute () {
  echo "enter to continue..."
  read temp
}

function install_sublime3 () {
  sudo add-apt-repository ppa:webupd8team/sublime-text-3
  sudo apt-get update
  sudo apt-get install sublime-text-installer
  echo "sublime3 installed"
}

function install_rails4 () {
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  \curl -sSL https://get.rvm.io | bash -s stable && source ~/.rvm/scripts/rvm && rvm requirements
  sudo apt-get -y install build-essential openssl libreadline6 libreadline6-dev
  sudo apt-get -y install zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0
  sudo apt-get -y install libsqlite3-dev sqlite3 libxml2-dev
  sudo apt-get -y install libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion
  rvm install 2.2.2
  rvm use 2.2.2 --default
  gem install rails -V --no-ri --no-rdoc
}
function install_mysql () {
  sudo apt-get install mysql-server mysql-client
  sudo apt-get install libmysqlclient-dev
}

function install_postgrest () {
  sudo apt-get install libpq-dev postgresql-9.3
  echo "sudo apt-get install libpq-dev postgresql-9.3"
  sudo apt-get install libpq-dev postgresql-9.3

  sudo pg_createcluster 9.3 main --start
  sudo /etc/init.d/postgresql start

  echo "copy dong nay vao de chuan bi them vao file"
  echo "ALTER USER 'postgres' WITH PASSWORD 'postgres';"
  echo "nhap xong thi an \q de thoat..."

  wait_minute

  read temp

  sudo -u postgres psql

  echo "done"
}
