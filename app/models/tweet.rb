class Tweet < ActiveRecord::Base
  # association
  belong_to :user
  has_many :comments
  # validation
  validates_presence_of :image, :text, :user_id
end
