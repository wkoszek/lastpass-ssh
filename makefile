rel:
	/bin/ls -1 *.gemspec | xargs gem build
relpush:
	gem push *.gem
clean:
	rm -rf *.gem
