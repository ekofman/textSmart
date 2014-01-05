class Book < ActiveRecord::Base
  attr_accessible :id, :user_id, :class_name, :book_name, :class_number, :subject, :price, :duration, :edition, :condition, :posting_date
  belongs_to :user
end
