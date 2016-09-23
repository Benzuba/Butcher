class Course < ActiveRecord::Base
  belongs_to :user

  validates :title, :presence => {:message => "Come on bro, you need a title"}
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
end