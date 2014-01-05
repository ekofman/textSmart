class User < ActiveRecord::Base
    attr_accessible :user_name, :email, :id
    has_many :books
end
