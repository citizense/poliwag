# -*- encoding: utf-8 -*-
# stub: holder_rails 2.9.3 ruby lib

Gem::Specification.new do |s|
  s.name = "holder_rails"
  s.version = "2.9.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nihad Abbasov"]
  s.date = "2016-02-29"
  s.description = "Provides Holder.js to render image placeholders entirely on the client side"
  s.email = ["mail@narkoz.me"]
  s.homepage = "https://github.com/narkoz/holder_rails"
  s.rubygems_version = "2.4.5"
  s.summary = "Holder.js for Rails asset pipeline"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1.0"])
    else
      s.add_dependency(%q<railties>, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1.0"])
  end
end
