#!/usr/bin/env sh

set -e

# 确保日志目录存在
mkdir -p /var/log

# 创建软链接：/etc/monit/monitrc -> /opt/.monitrc
rm -f /etc/monit/monitrc
ln -sf /opt/.monitrc /etc/monit/monitrc
chmod 600 /opt/.monitrc

RUN ln -sf /opt/.crontab /etc/crontab
chmod 644 /opt/.crontab

useradd -m -s /bin/bash $SSH_USER
echo "$SSH_USER:$SSH_PASSWORD" | chpasswd

usermod -aG sudo $SSH_USER

echo "$SSH_USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/init-users
echo 'PermitRootLogin no' > /etc/ssh/sshd_config.d/my_sshd.conf

# exec "$@"
# 启动 monit（前台运行）
exec monit -I
