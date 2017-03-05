rel:
	/bin/ls -1 *.gemspec | xargs gem build
relpush:
	gem push *.gem
uninstall:
	/bin/ls -1 *.gemspec | sed 's/\.gemspec//g' | xargs gem $@
install:
	/bin/ls -1 *.gemspec | sed 's/\.gemspec//g' | xargs gem $@
clean:
	rm -rf *.gem
