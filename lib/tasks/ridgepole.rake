namespace :db do
  # descの記述は必須
  desc "database migration via ridgepole"
  # :environment は モデルにアクセスするのに必須
  task :migrate => :environment do
    print `ridgepole -c config/database.yml --apply -E #{Rails.env}`
  end
end
