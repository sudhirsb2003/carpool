class Profile < ActiveRecord::Base
  attr_accessible :destination_location, :fisrt_name, :job_title, :last_name, :source_location,
                  :user_id, :photo, :profile_title, :vehicle_type, :accomodation_for
  #validates_presence_of :profile_title, :message =>"profile title can not be empty !"
  validates :title, :presence => true, :uniqueness => true, :length => { :maximum => 100 }
  validates :budget, :presence => true, :length => { :within => 1..10000000 }



  VEHICLE_TYPE  = %w[Car Auto-Rikshaw Mini-Bus Bus Jeep 8-Seater Two-Wheeler]

  has_attached_file :photo,
     :styles => {
                 :icon => "50x50",
                 :thumb=> "100x100",
                 :small  => "400x400"
                }

end
