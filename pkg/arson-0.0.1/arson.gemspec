# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{arson}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Austin Bergstrom"]
  s.date = %q{2011-02-06}
  s.description = %q{Adds active-record validations to a json format (to_arson) so that validations can be performed client side.}
  s.email = %q{awbergs@gmail.com}
  s.extra_rdoc_files = ["lib/arson.rb"]
  s.files = ["Rakefile", "lib/arson.rb", "Manifest", "arson.gemspec"]
  s.homepage = %q{http://github.com/tombombadil/hello_world}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Arson"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{arson}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Adds active-record validations to a json format (to_arson) so that validations can be performed client side.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
