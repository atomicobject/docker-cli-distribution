# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','ruby-cli-app','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'ruby-cli-app'
  s.version = RubyCliApp::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','ruby-cli-app.rdoc']
  s.rdoc_options << '--title' << 'ruby-cli-app' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'ruby-cli-app'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.13.2')
end
