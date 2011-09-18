# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{slim}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Andrew Stone}, %q{Fred Wu}, %q{Daniel Mendler}]
  s.date = %q{2011-08-26}
  s.description = %q{Slim is a template language whose goal is reduce the syntax to the essential parts without becoming cryptic.}
  s.email = [%q{andy@stonean.com}, %q{ifredwu@gmail.com}, %q{mail@daniel-mendler.de}]
  s.executables = [%q{slimrb}]
  s.extra_rdoc_files = [%q{README.md}]
  s.files = [%q{bin/slimrb}, %q{README.md}]
  s.homepage = %q{http://github.com/stonean/slim}
  s.rdoc_options = [%q{--charset=UTF-8}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{slim}
  s.rubygems_version = %q{1.8.8}
  s.summary = %q{Slim is a template language.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<temple>, ["~> 0.3.3"])
      s.add_runtime_dependency(%q<tilt>, ["~> 1.3.2"])
      s.add_development_dependency(%q<rake>, [">= 0.8.7"])
      s.add_development_dependency(%q<haml>, [">= 3.1.0"])
      s.add_development_dependency(%q<sass>, [">= 3.1.0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<rdiscount>, [">= 0"])
      s.add_development_dependency(%q<liquid>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<creole>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<temple>, ["~> 0.3.3"])
      s.add_dependency(%q<tilt>, ["~> 1.3.2"])
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<haml>, [">= 3.1.0"])
      s.add_dependency(%q<sass>, [">= 3.1.0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<rdiscount>, [">= 0"])
      s.add_dependency(%q<liquid>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<creole>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<temple>, ["~> 0.3.3"])
    s.add_dependency(%q<tilt>, ["~> 1.3.2"])
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<haml>, [">= 3.1.0"])
    s.add_dependency(%q<sass>, [">= 3.1.0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<rdiscount>, [">= 0"])
    s.add_dependency(%q<liquid>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<creole>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
