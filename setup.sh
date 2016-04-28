

echo "Installing development environment dependencies..."

sudo apt-get install -y git gcc make openssl libssl-dev libbz2-dev libreadline-dev libsqlite3-dev libffi-dev libjpeg8-dev libxml2-dev libxslt1-dev python-dev zlib1g-dev emacs vim  > /dev/null

if [ "$?" = "1" ]
then
  echo "An unexpected error occured!"
  exit 0
fi

sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev  > /dev/null

if [ "$?" = "1" ]
then
  echo "An unexpected error occured!"
  exit 0
fi

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev  > /dev/null

if [ "$?" = "1" ]
then
  echo "An unexpected error occured!"
  exit 0
fi

echo "Installing ngnix and passenger"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo apt-get install -y apt-transport-https ca-certificates > /dev/null

# Add Passenger APT repository
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update > /dev/null

# Install Passenger & Nginx
sudo apt-get install -y nginx-extras passenger  > /dev/null

if [ "$?" = "1" ]
then
  echo "An unexpected error occured!"
  exit 0
fi

echo "Installing mongodb"

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update > /dev/null
sudo apt-get install -y mongodb-org   > /dev/null

if [ "$?" = "1" ]
then
  echo "An unexpected error occured!"
  exit 0
fi

echo "Installing node.js"
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

if [ "$?" = "1" ]
then
  echo "An unexpected error occured!"
  exit 0
fi

echo "============================================================"
echo "** nginx(passage),node.js,mongodb installed **"

echo "sudo vim /etc/nginx/nginx.conf"
echo "passenger-config --ruby-command"

echo "Command: /home/deploy/.rvm/gems/ruby-2.0.0-p648/wrappers/ruby"

echo "passenger_root /usr/lib/ruby/vendor_ruby/phusion_passenger/locations.ini;"
echo "passenger_ruby /home/deploy/.rvm/gems/ruby-2.0.0-p648/wrappers/ruby; # If use use rvm, be sure to change the version number"

echo "** Remote Access: mongodb **"

echo "vim /etc/mongod.conf"
echo "bind_ip = 0.0.0.0"
echo "============================================================"


sleep 1
exit 0
