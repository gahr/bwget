`bwget` synchronizes your Bitwarden vault to a gpg-encrypted local file for fast access and implements a simple search & formatting functionality.

```
Usage: ./bwget [options] command [args]

Options
    --keyid <id>  Use <id> as the recipient for encryption

Command
    item <search>    Search and dump an item
    user <search>    Search and dump the username of an item
    pass <search>    Search and dump the password of an item
    dump             Dump the local cache.
    sync             Synchronize with Bitwarden valut
    help             Display this help page.
```

```sh
$ bwget item Google
Google [1b86584f-6d63-4302-aca0-acd40071223d]
Uername: example@email.com
Password: V3ryS3cret,
URL     : https://accounts.google.com
Notes   : Backup codes:
1234 5678
5495 1612
9572 5734
6724 528

$ bwget user Google
example@email.com
```
