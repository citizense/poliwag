# -*- encoding: utf-8 -*-
# stub: traceroute 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "traceroute"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Akira Matsuda"]
  s.date = "2015-04-17"
  s.description = "This Rake task investigates the application's routes definition, then tells you unused routes and unreachable action methods"
  s.email = ["ronnie@dio.jp"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "https://github.com/amatsuda/traceroute"
  s.licenses = ["MIT"]
  s.rubyforge_project = "traceroute"
  s.rubygems_version = "2.4.5"
  s.summary = "A Rake task that helps you find the dead routes and actions for your Rails 3 app"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
  end
end
