class Profile < ActiveRecord::Base
  attr_accessible :destination_location, :fisrt_name, :job_title, :last_name, :source_location,
                  :user_id, :photo, :profile_title, :vehicle_type, :accomodation_for,:gender,
                  :address,:city,:pincode,:city_of_residence, :state_of_residence, :organisation_name, :organisation_landmark,
                  :start_time,:start_time, :start_time, :start_time, :start_time, :reaching_time,
                  :reaching_time, :reaching_time, :reaching_time, :reaching_time, :destination_landmark, :description,
                  :vehicle_number_1, :vehicle_number_2, :driving_licence_number, :issueing_state, :issueing_city, :date_of_birth

  #validates_presence_of :profile_title, :message =>"profile title can not be empty !"

  #validates :job_title, :presence => true, :uniqueness => true, :length => { :maximum => 100 }
  #validates :budget, :presence => true, :length => { :within => 1..10000000 }



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

end
