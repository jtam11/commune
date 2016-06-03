class Tag < ActiveRecord::Base
  has_many :taggings, dependent: :destroy
  has_many :talks, through: :taggings, dependent: :destroy 
end
