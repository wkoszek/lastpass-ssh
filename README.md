# SSH key management with LastPass

[![Build Status][1]][2]

This repository has a script called `lastpass-ssh` which integrates LastPass
with SSH. You store your SSH key passphrases in LastPass, and SSH key files
somewhere else. To start using SSH, you type `lastpass-ssh` and it will
unlock all SSH keys with appropriate passphrases.

## How to install

Install `lastpass-ssh` and `lpass` client:

    sudo brew install lastpass-cli
    sudo gem install lastpass-ssh

## Setup

You make yourself an "SSH" subfolder in the LastPass' "Secure Notes" and add
secure notes there. Each note has a name and a passphrase. The name
corresponds to the filename of the SSH key file, and the passphrase is its
key's passphrase.

Example: if you have a key like `myrepos` in `~/.ssh/`, then the name of the
Secure Note would be `myrepos`.

## How to use

Run:

    lastpass-ssh

It will poll the "Secure Notes/SSH" folder and for each note of name "A",
it'll try to perform `ssh-add ~/.ssh/A` with an appropriate passphrase.

You can change the location of keys by passing
`--keys-path=<where-you-have-keys>`.  By default all keys are added.  You
can change this behavior by passing `--key=KEYNAME` option, where `KEYNAME`
is the name of the key file you want to add.

## Details

Internally the `lastpass-ssh` script is based on the [`lpass`][3] command
line tool provided by the [LastPass team][4].

## Author

- Wojciech Adam Koszek, [wojciech@koszek.com][5]
- [http://www.koszek.com][6]


[1]: https://travis-ci.org/wkoszek/lastpass-ssh.svg?branch=master
[2]: https://travis-ci.org/wkoszek/lastpass-ssh
[3]: https://github.com/lastpass/lastpass-cli
[4]: https://github.com/lastpass
[5]: mailto:wojciech@koszek.com
[6]: http://www.koszek.com
