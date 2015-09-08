git clone https://github.com/lastpass/lastpass-cli.git
cd lastpass-cli
make PREFIX=${HOME}/bin -j 16
make PREFIX=${HOME}/bin install
