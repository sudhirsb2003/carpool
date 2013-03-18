class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :fisrt_name
      t.string :last_name
      t.string :job_title
      t.string :source_location
      t.string :destination_location

      t.timestamps
    end
  end
end
