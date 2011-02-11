# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "toPinyin/version"

Gem::Specification.new do |s|
  s.name        = "toPinyin"
  s.version     = Topinyin::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["pierr.chen"]
  s.email       = ["pierr.chen@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{convert chinese to Pinyin}
  s.description = %q{convert chinese to Pinyin}

  s.rubyforge_project = "toPinyin"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
