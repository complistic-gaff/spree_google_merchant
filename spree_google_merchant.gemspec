Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_google_merchant'
  s.version     = '0.70.0'
  s.summary     = 'Live product feed for Google Merchant'
  s.description = 'Provides a live product feed for Google Merchant rather a file that you have to upload. This is a very basic extension so feel free to help improve it!'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'sebastyuiop'
  # s.email             = 'david@loudthinking.com'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.70.0')
end
