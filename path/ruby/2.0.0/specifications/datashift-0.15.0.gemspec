# -*- encoding: utf-8 -*-
# stub: datashift 0.15.0 ruby lib

Gem::Specification.new do |s|
  s.name = "datashift"
  s.version = "0.15.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Thomas Statter"]
  s.date = "2014-06-16"
  s.description = "Comprehensive tools to import/export between Excel/CSV and ActiveRecord databases, Rails apps, and any Ruby project."
  s.email = "rubygems@autotelik.co.uk"
  s.extra_rdoc_files = ["LICENSE.txt", "README.markdown", "README.rdoc"]
  s.files = ["LICENSE.txt", "README.markdown", "README.rdoc"]
  s.homepage = "http://github.com/autotelik/datashift"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Shift data betwen Excel/CSV and any Ruby app"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spreadsheet>, [">= 0"])
      s.add_runtime_dependency(%q<rubyzip>, [">= 0"])
    else
      s.add_dependency(%q<spreadsheet>, [">= 0"])
      s.add_dependency(%q<rubyzip>, [">= 0"])
    end
  else
    s.add_dependency(%q<spreadsheet>, [">= 0"])
    s.add_dependency(%q<rubyzip>, [">= 0"])
  end
end
