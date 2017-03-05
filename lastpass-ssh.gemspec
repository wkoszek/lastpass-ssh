Gem::Specification.new do |s|
  s.name        = 'lastpass-ssh'
  s.version     = '1.0.3'
  s.summary     = "Use LastPass for SSH key passphrases"
  s.description = "The #{s.name} lets you remember SSH passphrases in LastPass"
  s.authors     = ["Wojciech Adam Koszek"]
  s.email       = "wojciech@koszek.com"
  s.homepage    = "http://github.com/wkoszek/#{s.name}"
  s.files       = ["bin/#{s.name}"]
  s.executable	= "#{s.name}"
  s.require_paths = ['.']
  s.license	= 'BSD-2-Clause'
end
