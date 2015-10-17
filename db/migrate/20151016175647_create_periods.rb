class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.datetime :schedule
      t.string :band
      t.string :special

      t.timestamps null: false
    end
  end
end
