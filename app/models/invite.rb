class Invite < ActiveRecord::Base
  belongs_to :attendee, :class_name => "User"
  belongs_to :attended_talk, :class_name => "Talk"
end
