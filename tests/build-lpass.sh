(
	git clone https://github.com/lastpass/lastpass-cli.git
	cd lastpass-cli
	make PREFIX=${HOME}/lpass -j 16
	make PREFIX=${HOME}/lpass install
)
