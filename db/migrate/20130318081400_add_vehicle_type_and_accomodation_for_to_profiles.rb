class AddVehicleTypeAndAccomodationForToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :vehicle_type, :string
    add_column :profiles, :accomodation_for, :integer
  end
end
