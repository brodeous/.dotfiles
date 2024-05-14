# .dotfiles
Personal .dotfiles for most of the tools I use for coding


## Setting up Git Authentication

First we need to make sure the dependencies we will be using to create and store the keys are installed.

- DNF package manager
```
dnf install gpg pass
```

- APT package manager
```
apt install gpg pass
```

Next we need the [git credential manager](https://github.com/git-ecosystem/git-credential-manager/tree/main).

After following through the installation given by gcm, we need to go about setting up gpg and pass for gcm to function correctly.

Generate a gpg key and give it a userid.
```
gpg --full-generate-key
```

Then initialize pass with the userid
```
pass init <userid>
```

\*NOTE: If the gpg key generated is not encryptable, a subkey will need to be generated that is
```
gpg --edit-key <userid>
---
gpg> addKey // go through the setup again and choose an encrypt option
```

In the .bashrc file, add
```bash
export GCM_CREDENTIALS_STORE="gpg"
```
This will tell gcm what key manager to use

Finally, we want to run
```
git credential-manager github login
```
This will display a pop-up to then login into github. Once logged in, the key will be linked.

After this, upon next `git push`, the passkey to the gpg key will be asked and can be saved to the passkey manager.

