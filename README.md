# lastpass-ssh-add

Script for downloading and adding ssh-keys from lastpass to your ssh-agent.

Install lastpass cli and login
```bash
Mac:
brew update && brew install lastpass-cli

Other:
https://github.com/lastpass/lastpass-cli

Login:
lpass login user@example.com
```

Download and move to your PATH, (/usr/local/bin) for example.
```bash
curl -O https://raw.githubusercontent.com/bellstrand/lastpass-ssh-add/master/lastpass-ssh-add.sh && mv lastpass-ssh-add.sh /usr/local/bin/lastpass-ssh-add
```

In Lastpass save the keys as "SSH Key" and put the the content of your private key inside the "Private Key" field.

After that you can run
```bash
lastpass-ssh-add
```
to scan and add all keys to your ssh-agent.
