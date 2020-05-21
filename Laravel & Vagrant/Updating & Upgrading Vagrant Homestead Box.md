## Updating / Upgrading Vagrant Homestead Box

First we need to ensure the *vagrant box* is up and running:

```
vagrant up
```

Next we need to *ssh* into the **vagrant/homestead** box:

```
vagrant ssh
```

Once in the machine you will need to backup the homestead mysql configurations which can be imported once we have built a new version of the machine and this will mean we do not lose any data at all **{data retention}**

```
mysqldump -u homestead -psecret --all-databases > code/homestead-backup.sql
```

Then we need to exit the *vagrant/homestead* box:

```
exit
```

Next we will perform an update to homestead box:

```
vagrant box update
```

**Please note:** this may take some time to download based on your internet speed.

Next we *destroy* the **vagrant/homstead** box:

```
vagrant destroy
```

Next we *restart* the new **vagrant/homestead** box:

```
vagrant up
```

Next we need to *ssh* into the **vagrant/homestead** box:

```
vagrant ssh
```

Next we will need to *import* the homestead sql configs back into mysql that we saved earlier:

```
mysql -u homestead -psecret < code/homestead-backup.sql
```

Then we need to exit the *vagrant/homestead* box:

```
exit
```

Next we list all existing vagrant boxes:

```
vagrant box list
```

Next we *remove* the old **laravel/homestead** box:

```
vagrant box remove laravel/homestead --box-version=x.x.x
```

Finally we can then re-list existing vagrant boxes to ensure that the box has indeed been removed:

```
vagrant box list
```

