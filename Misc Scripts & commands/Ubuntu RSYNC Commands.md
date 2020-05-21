## Ubuntu RSYNC Commands

Copy files / folders to a destination with progress:

```shell
rsync -ah --progress /path/to/source /path/to/destination/
```

Delete all files / folders from a source:

```shell
rsync -a --delete empty_dir/ /path/to/source
```

