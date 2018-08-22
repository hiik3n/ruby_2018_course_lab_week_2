namespace :users do
  desc "It creates 20 users"
  task create: :environment do
    Users::BulkCreate.new.execute
  end

end
