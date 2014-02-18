class User < ActiveRecord::Base
    attr_accessible :user_name, :email, :id
    has_many :books
    
  validates :email, presence: true
  validates :email, uniqueness: {:message=> "email exists"}
  validate :email_regex , message: "not valid regex"

  def email_regex
    if email.present? and not email.match(/.+@stanford.edu$/)
      errors.add :email, "Not a valid Stanford email address"
      print "hello"
    end
  end

  def get_user_handle
    handle = self.user_name.split("@")[0]
    return handle
  end
end

