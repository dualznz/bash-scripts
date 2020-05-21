## Implementing SSH keys on debian(ubuntu) servers

First we need to make the *~./ssh* directory:

```shell
sudo mkdir -p ~/.ssh
```

Next we need to make & add our ssh keys to an authorized keys file:

```shell
sudo nano ~/.ssh/authorized_keys
```

Then add your ssh keys to the file.

Next we **chmod** the *~/.ssh* directory:

```shell
sudo chmod -R go= ~/.ssh
```

Next we need to **chown** the *~/.ssh* directory:

```shell
sudo chown -R root:root ~/.ssh
```

Finally we need to modify the sshd_config file to allow password authentication:

```shell
sudo nano /etc/ssh/sshd_config
```

Then find the following line:

```shell
PasswordAuthentication
```

Then change it from **no** to **yes**

After completing the above steps you just need to **restart** the ssh service:

```shell
systemctl restart ssh
```

