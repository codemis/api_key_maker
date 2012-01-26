# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "api_key_maker/version"

Gem::Specification.new do |s|
  s.name        = "api_key_maker"
  s.version     = ApiKeyMaker::VERSION
  s.authors     = ["Johnathan Pulos"]
  s.email       = ["johnathan@still-water.com"]
  s.homepage    = "https://github.com/codemis/api_key_maker"
  s.summary     = %q{Generates a random api key string}
  s.description = %q{Using SHA1 encryption, it generates a random string to a set number of characters that is useful for API keys.}

  s.rubyforge_project = "api_key_maker"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
end
