require 'csv'

namespace :periods do

  task :refresh => [:reset, :load]

  desc "reset"
  task :reset => :environment do
    Period.destroy_all
  end

  desc "load"
  task :load => :environment do
    CSV.foreach('lib/assets/periods.csv', :headers => true, :encoding => 'UTF-8') do |row|
      Period.create(row.to_hash)
    end
  end
end
