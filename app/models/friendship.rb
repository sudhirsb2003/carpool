class Friendship < ActiveRecord::Base
  attr_accessible :friend_id, :user_id
  belongs_to :user
  belongs_to :friend, :class_name => "User"
 
  include Workflow

workflow_column :state

  workflow do

    state :pending do
      event :approve, :transitions_to => :approved
      event :reject, :transitions_to => :rejected
    end
     
    state :approved do 
    end

    state :rejected do
      event :destroy, :transitions_to => :pending
    end

  end
validates :friend_id, :uniqueness => {:scope => :user_id}
#validate :unique_relationship

#def unique_relationship
#  (user_id.to_s + friend_id.to_s).uniq
#end

end
