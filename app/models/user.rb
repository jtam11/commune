class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :talks, :foreign_key => :host_id

  has_many :invites, :foreign_key => :attendee_id
  has_many :attended_talks, :through => :invites
end
