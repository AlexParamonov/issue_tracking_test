source 'https://rubygems.org'

gem 'rails', '~>3.2.3'

# for CRuby, Rubinius, including Windows and RubyInstaller
gem 'sqlite3', :platform => [:ruby, :mswin, :mingw]

# for JRuby
gem 'jdbc-sqlite3', :platform => :jruby

gem 'jquery-rails', '~>2.0'
gem 'haml-rails', '~>0.3'
gem 'routing-filter', '~>0.3'
gem 'display_case', '~>0.0.3'

group :test, :development do
  gem 'rspec-rails', '~> 2.6'
  gem 'database_cleaner', '~>0.8'
  gem 'guard-rspec', '~>1.2'
end

group :development do
  gem 'guard', '~>1.2'
  gem 'guard-bundler', '~>1.0'
  gem 'guard-shell', '~>0.5'
end

group :test do
  gem 'factory_girl', '~>3.5'
  gem 'kameleon', '~> 0.2'
end

group :assets do
  gem 'sass-rails',   '~>3.2.3'
  gem 'coffee-rails', '~>3.2.2'

  gem 'uglifier', '~>1.2'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', '~>0.10'
end
