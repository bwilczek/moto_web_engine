Running it:

```
rails new ui
cd ui
# edit config/database.yml
# edit Gemfile, add:
  gem 'mysql2', '~> 0.3.18' # or whatever DB driver gem of preference
  gem 'moto_web_engine'
bundle install
rake moto_web_engine:install:migrations
rake db:migrate
edit config/routes.rb
  mount MotoWebEngine::Engine => "/"
  root 'moto_web_engine/runs#index'
bundle exec rails s -b 0.0.0.0 -d
```
