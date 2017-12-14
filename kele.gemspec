Gem::Specification.new do |s|
   s.name          = 'kele'
   s.version       = '0.0.1'
   s.date          = '2017-12-13'
   s.summary       = 'Kele API Client'
   s.description   = 'A client for the Bloc API'
   s.authors       = ['Tyler Roberts']
   s.email         = 'twr349@gmail.com'
   s.files         = ['lib/kele.rb', 'lib/kele/roadmap.rb']
   s.require_paths = ["lib"]
   s.homepage      =
     'http://rubygems.org/gems/kele'
   s.license       = 'MIT'
   s.add_runtime_dependency 'httparty', '0.9.0', 'json', '~> 1.8'
 end