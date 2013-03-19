class AddGenderToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :gender, :string
    add_column :profiles, :participant, :string
    add_column :profiles, :organisation_name, :string
    add_column :profiles, :city, :string
    add_column :profiles, :address, :text
    add_column :profiles, :city_of_residence, :string
    add_column :profiles, :state_of_residence, :string
    add_column :profiles, :pincode, :integer
    add_column :profiles, :organisation_landmark, :string
    add_column :profiles, :start_time, :time
    add_column :profiles, :reaching_time, :time
    add_column :profiles, :destination_landmark, :string
    add_column :profiles, :description, :text
    add_column :profiles, :driving_licence_number, :string
    add_column :profiles, :issueing_state, :string
    add_column :profiles, :issueing_city, :string
    add_column :profiles, :vehicle_number_1, :string
    add_column :profiles, :vehicle_number_2, :string
  end
end
