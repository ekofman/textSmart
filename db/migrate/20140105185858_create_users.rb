class CreateUsers < ActiveRecord::Migration
  def up
    # Create initial users
    ek = User.new(:user_name => "ekof", :email => "ekofman@stanford.edu")
    ek.save(:validate => false)
    ca = User.new(:user_name => "C-monster", :email => "cjaholt@stanford.edu")
    ca.save(:validate => false)
    az = User.new(:user_name => "Zamush", :email => "alexzamoshchin@gmail.com")
    az.save(:validate => false)
 
     
    # Create initial book.
    cme100 = Book.new(:posting_date => "2013-08-30 10:44:23", :book_name => "CME100 Course Reader", :class_name => "Vector Calculus for Engineers", :class_number => "100", :subject => "CME", :duration => "sale", :price => 20, :edition => 2, :condition => "good")
    cme100.user = ek
    cme100.save(:validate => false)
     
    psych1 = Book.new(:posting_date => "2013-09-20 10:44:23", :book_name => "Psychology 1", :class_name => "Introduction to Psychology", :class_number => "1", :subject => "PSYCH", :duration => "rental", :price => 10, :edition => 3, :condition => "like new")
    psych1.user = ca
    psych1.save(:validate => false)
  end
 
  #def down
  #    Book.delete_all
  #    User.delete_all
  #end
end
