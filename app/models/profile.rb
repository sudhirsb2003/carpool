class Profile < ActiveRecord::Base
  attr_accessible :destination_location, :fisrt_name, :job_title, :last_name, :source_location,
                  :user_id, :photo, :profile_title, :vehicle_type, :accomodation_for
  validates_presence_of :profile_title, :message =>"profile title can not be empty !"

  PROFILE_TITLE = %w[Lift_Provider Lift_Seeker]
  VEHICLE_TYPE  = %w[Car Autorikshaw Mini_bus Bus Jeep 8-Seater]

  has_attached_file :photo,
     :styles => {
                 :icon => "50x50",
                 :thumb=> "100x100",
                 :small  => "400x400"
                }

end
