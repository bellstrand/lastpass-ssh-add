# lastpass-ssh-add

Script for downloading and adding ssh-keys from lastpass to your ssh-agent.

Download and move to your PATH, (/usr/local/bin) for example.
wget

In Lastpass save the keys as "SSH Key" and put the the content of your private key inside the "Private Key" field.

After that you can run
```bash
lastpass-ssh-add
```
to scan and add all keys to your ssh-agent.