`bwget` synchronizes your Bitwarden vault to a gpg-encrypted local file for fast access and implements a simple search & formatting functionality.

```
Usage: ./bwget [options] command

Options
    --keyid <id>  Use <id> as the recipient for encryption

Command
    --sync        Synchronize the local cache.
    --dump        Dump the local cache.
    --help        Display this help page.
    <term>        Search for <term>.
```

```sh
$ bwget Google
Google [1b86584f-6d63-4302-aca0-acd40071223d]
Uername: example@email.com
Password: V3ryS3cret,
URL     : https://accounts.google.com
Notes   : Backup codes:
1234 5678
5495 1612
9572 5734
6724 528
```
