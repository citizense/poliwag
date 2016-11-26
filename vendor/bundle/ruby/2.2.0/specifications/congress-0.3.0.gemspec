# -*- encoding: utf-8 -*-
# stub: congress 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "congress"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Erik Michaels-Ober"]
  s.date = "2015-08-13"
  s.description = "Ruby wrapper for the Sunlight Congress API, a live JSON API for the people and work of Congress, provided by the Sunlight Foundation."
  s.email = "sferik@gmail.com"
  s.homepage = "https://github.com/codeforamerica/congress"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.4.5"
  s.summary = "Ruby wrapper for the Sunlight Congress API"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.9.0"])
      s.add_runtime_dependency(%q<faraday_middleware>, ["~> 0.10.0"])
      s.add_runtime_dependency(%q<hashie>, ["~> 3.0"])
      s.add_runtime_dependency(%q<geocoder>, ["~> 1.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.9.0"])
      s.add_dependency(%q<faraday_middleware>, ["~> 0.10.0"])
      s.add_dependency(%q<hashie>, ["~> 3.0"])
      s.add_dependency(%q<geocoder>, ["~> 1.2"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.9.0"])
    s.add_dependency(%q<faraday_middleware>, ["~> 0.10.0"])
    s.add_dependency(%q<hashie>, ["~> 3.0"])
    s.add_dependency(%q<geocoder>, ["~> 1.2"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
