class Talk < ActiveRecord::Base
  belongs_to :host, :class_name => "User"

  has_many :invites, :foreign_key => "attended_talk_id"
  has_many :attendees, :through => :invites

  scope :upcoming, -> { where("date >= ?", Date.today).order('date asc') }
  scope :past, -> { where("date < ?", Date.today).order('date desc') }
end
