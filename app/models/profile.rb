class Profile < ActiveRecord::Base

  attr_accessible :destination_location, :fisrt_name, :job_title, :last_name, :source_location,
                  :user_id, :photo, :profile_title, :vehicle_type, :accomodation_for,:gender,
                  :address,:city,:pincode,:city_of_residence, :state_of_residence, :organisation_name, :organisation_landmark,
                  :start_time,:start_time, :start_time, :start_time, :start_time, :reaching_time,
                  :reaching_time, :reaching_time, :reaching_time, :reaching_time, :destination_landmark, :description,
                  :vehicle_number_1, :vehicle_number_2, :driving_licence_number, :issueing_state, :issueing_city, :date_of_birth,
                  :latitude, :longitude, :gmaps

  VEHICLE_TYPE  = %w[Car Auto-Rikshaw Mini-Bus Bus Jeep 8-Seater Two-Wheeler]

  has_attached_file :photo, :styles => { :small => "150x150>",:icon=>"50x50", :medium=>"400x400",:big=>"600x800",:large=>"1024x768" },
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
 
  belongs_to :user
  

  def full_name
    "#{fisrt_name} #{last_name}"
  end

  acts_as_gmappable

  def gmaps4rails_address
   #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
   "#{self.address}, #{self.city}, #{self.state_of_residence}" 
  end

  def gmaps4rails_infowindow
    "<h4>#{fisrt_name} #{last_name}</h4>" << "<h4>#{address}</h4>"
  end
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end
