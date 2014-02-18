# Create initial users.
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

    math1 = Book.new(:posting_date => "2013-09-20 10:44:23", :book_name => "Math 1", :class_name => "All About Math", :class_number => "1", :subject => "MATH", :duration => "rental", :price => 10, :edition => 3, :condition => "like new")
    math1.user = ca
    math1.save(:validate => false)

    history1 = Book.new(:posting_date => "2013-09-20 10:44:23", :book_name => "History 1", :class_name => "History of the World", :class_number => "1", :subject => "HIST", :duration => "rental", :price => 10, :edition => 3, :condition => "like new")
    history1.user = ca
    history1.save(:validate => false)

    lit1 = Book.new(:posting_date => "2013-09-20 10:44:23", :book_name => "Anthology of Porn", :class_name => "Literature Porn", :class_number => "1", :subject => "COMPLIT", :duration => "rental", :price => 10, :edition => 3, :condition => "like new")
    lit1.user = ca
    lit1.save(:validate => false)
