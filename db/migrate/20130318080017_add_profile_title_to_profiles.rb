class AddProfileTitleToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :profile_title, :string
  end
end
