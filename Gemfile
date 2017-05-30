source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.1'
gem 'puma', '~> 3.7'
gem 'rack-cors'
gem 'graphql'

group :development, :test do
  gem 'sqlite3'
  gem 'minitest-doctest', github: 'lauri/minitest-doctest'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'yard'
  gem 'graphiql-rails'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
