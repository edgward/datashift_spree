lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

  
require 'rake'
  
require 'datashift_spree'

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = DataShift::SpreeHelper::gem_name
  s.version = DataShift::SpreeHelper::gem_version

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Statter"]
  s.date = "2012-09-10"
  s.description = "Comprehensive tools to import/export between Excel/CSV and ActiveRecord databases, Rails apps, and any Ruby project"
  s.email = "rubygems@autotelik.co.uk"
  
  s.files = FileList["datashift_spree.thor", 
    "README.markdown",
    "datashift_spree.gemspec",
    'VERSION', 
    "LICENSE.txt", 
    "{lib,spec}/**/*"].exclude("rdoc").exclude("nbproject").exclude("fixtures").exclude(".log").exclude(".contrib").to_a
  
  s.homepage = "http://github.com/autotelik/datashift"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Shift data betwen Excel/CSV and Ruby"
  
  s.add_dependency(%q<datashift>, [">= 0"])
end
