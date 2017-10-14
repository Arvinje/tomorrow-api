source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.6', '>= 3.6.1'
  gem 'factory_girl_rails', '~> 4.8'
  gem 'faker', '~> 1.8', '>= 1.8.4'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-rspec', '~> 4.7', '>= 4.7.3', require: false
  gem 'guard-yard', '~> 2.2'
  gem 'terminal-notifier-guard', '~> 1.7'
end
