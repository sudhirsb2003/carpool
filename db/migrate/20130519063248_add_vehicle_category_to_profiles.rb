class AddVehicleCategoryToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :vehicle_category, :string
  end
end
