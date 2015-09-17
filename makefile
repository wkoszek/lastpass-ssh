rel:
	gem build lastpass-ssh.gemspec
relpush:
	gem push *.gem
clean:
	rm -rf *.gem
