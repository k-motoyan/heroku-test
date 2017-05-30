namespace :doctest do
  Rails.env = 'test'

  desc 'Run doctest'
  task run: :environment do
    Minitest.run_via[:ruby] = true

    require 'minitest/doctest'
    require 'minitest/autorun'

    `bundle exec rails db:reset RAILS_ENV=#{Rails.env}`

    f =
      FileList["#{Rails.root}/app/models/**/*.rb"] +
      FileList["#{Rails.root}/lib/modules/**/*.rb"]

    Minitest::Doctest.run(f, false)
  end
end
