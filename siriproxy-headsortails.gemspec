# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-headsortails"
  s.version     = "0.0.1"
  s.authors     = ["Ponyboy47"]
  s.email       = ["ponyboy47@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Quick and easy heads or tails}
  s.description = %q{Ask Siri head's or tail's and she responds with one of the two}

  s.rubyforge_project = "siriproxy-headsortails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end

