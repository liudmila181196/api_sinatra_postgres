# -*- encoding: utf-8 -*-
# stub: sequel-seed 1.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "sequel-seed".freeze
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ewerton Carlos Assis".freeze]
  s.date = "2019-07-04"
  s.description = "A Sequel extension to make seeds/fixtures manageable like migrations".freeze
  s.email = "earaujoassis@gmail.com".freeze
  s.homepage = "https://github.com/earaujoassis/sequel-seed".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.10".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A Sequel extension to make seeds/fixtures manageable like migrations".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sequel>.freeze, [">= 4.49.0"])
    else
      s.add_dependency(%q<sequel>.freeze, [">= 4.49.0"])
    end
  else
    s.add_dependency(%q<sequel>.freeze, [">= 4.49.0"])
  end
end
