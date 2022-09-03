# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["Dwayne Macgowan"]
  gem.email         = ["dwaynemac@gmail.com"]
  gem.description   = %q{Assets to be re-used in PADMA applications}
  gem.summary       = %q{Assets to be re-used in PADMA applications}
  gem.homepage      = ""

	gem.files         = Dir["{app,lib,vendor,config}/**/*"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "padma-assets"
  gem.require_paths = ["lib"]
  gem.version       = '0.3.20'
  gem.add_dependency "railties", ">= 3.1"
end
