class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :talks, :foreign_key => :host_id, dependent: :destroy

  has_many :invites, :foreign_key => :attendee_id, dependent: :destroy
  has_many :attended_talks, :through => :invites, dependent: :destroy



  def attend!(talk)
    self.invites.create!(attended_talk_id: talk.id)
  end

  def attending?(talk)
    talk.attendees.include?(self)
  end

  def cancel!(talk)
    self.invites.find_by(attended_talk_id: talk.id).destroy
  end

  def upcoming_hosted
    self.talks.upcoming
  end

  def previous_hosted
    self.talks.past
  end

  def upcoming_attended
    self.attended_talks.upcoming
  end

  def previous_attended
    self.attended_talks.past
  end

end
