class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :talks, :foreign_key => :host_id

  has_many :invites, :foreign_key => :attendee_id
  has_many :attended_talks, :through => :invites



  def attend!(talk)
    self.invites.create!(attended_talk_id: talk.id)
  end

  def attending?(talk)
    talk.attendees.include?(self)
  end

  def cancel!(talk)
    self.invites.find_by(attended_talk_id: talk.id).destroy
  end
end
