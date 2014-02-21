class Book < ActiveRecord::Base
  attr_accessible :id, :user_id, :class_name, :book_name, :class_number, :subject, :price, :duration, :edition, :condition, :posting_date
  belongs_to :user

  validates :book_name, presence: true
  validates :class_name, presence: true
  validates :price, numericality: true 
  validates :price, presence: true
end
