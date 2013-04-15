# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'messie'

Gem::Specification.new do |s|
  s.name = "messie"
  s.version = Messie::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dominik Liebler"]
  s.date = "2012-01-21"
  s.description = "Messie is a simple web crawler that crawls one page at a time."
  s.email = "liebler.dominik@googlemail.com"
  s.executables = ["messie"]
  s.extra_rdoc_files = ["History.txt", "bin/messie"]
  s.files = Dir.glob("{bin,lib,test}/**/*") + %w(README.md History.txt Rakefile version.txt)
  s.homepage = "https://github.com/domnikl/messie"
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "messie"
  s.rubygems_version = "1.8.11"
  s.summary = "Messie is a simple web crawler that crawls one page at a time."
  s.test_files = Dir.glob("test/**/*")

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sanitize>, [">= 2.0.3"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.5.0"])
    else
      s.add_dependency(%q<sanitize>, [">= 2.0.3"])
      s.add_dependency(%q<nokogiri>, [">= 1.5.0"])
    end
  else
    s.add_dependency(%q<sanitize>, [">= 2.0.3"])
    s.add_dependency(%q<nokogiri>, [">= 1.5.0"])
  end
end
