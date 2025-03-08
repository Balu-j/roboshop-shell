cp mongo.repo /etc/yum.repos.d/mongo.repo
dnf install mongodb-org -y

# shellcheck disable=SC1073
sed -i -e 's|127.0.0.1|0.0.0.0|' /etc/mongo.conf


systemctl enable mongod
systemctl restart mongod