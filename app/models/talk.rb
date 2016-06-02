class Talk < ActiveRecord::Base
  belongs_to :host, :class_name => "User"

  has_many :invites, :foreign_key => "attended_talk_id"
  has_many :attendees, :through => :invites

  has_many :taggings
  has_many :tags, through: :taggings

  scope :upcoming, -> { where("date >= ?", Date.today).order('date asc') }
  scope :past, -> { where("date < ?", Date.today).order('date desc') }


  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).talks
  end

end
