# LastPass integration with SSH

This repository has scripts for integrating LastPass with SSH.
You store you SSH key passphrases in LastPass, and keys itself somewhere
else.
You unlock an access to the LastPass Vault through the command `lpass`,
which is a command line utility for accessing LastPass, and is authored by
guys from LastPass.

# How to install

Install `lastpass-ssh` and `lpass` client:

	sudo brew install lastpass-cli
	sudo gem install lastpass-ssh

# How to use

Go you your LastPass Vault and make `SSH` directory in `Secure Notes`. Add
Secure Note. As a name put the name of the SSH key file, "SSH Key" as a note
type and passphrase in "Passphrase". Example: if you have a key like
`myrepos` in `~/.ssh/`, then the name of the Secure Note would be `myrepos`.

Run:

	lastpass-ssh

It'll ask for the master password to the vault.
Upon unlocking it'll loop through Secure Notes in the 'Secure Notes/SSH' directory and try to add keys by the name.
File named 'XYZ' will be searched in `~/.ssh/XYZ`.
You can change the location of keys by passing `--keys-path=<where-you-have-keys>`.
By default all keys are added.
You can change this behavior by passing `--key=KEYNAME` option, where
`KEYNAME` is the name of the key file you want to add.
