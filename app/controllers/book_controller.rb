class BookController < ApplicationController
    def index
        @books = Book.find(:all)
    end
 
    def buy
        @books = Book.find(:all)
    end
     
    def new
    end

    def search
      @books = Book.find(:all)
      @substring = params[:substring]
    end
     
    def create
        if session["user"] != nil
            @b = Book.new(:user_id => session["id"], :posting_date => Time.now, :book_name => params[:book][:book_title], :edition => params[:book][:edition], :class_name => params[:book][:class_name], :subject => params[:book][:major], :class_number => params[:book][:class_number], :price => params[:book][:price], :condition => params[:book][:condition], :duration => params[:book][:rent_or_sale])
            if not @b.valid?
                flash[:notice] = "Please fill all fields correctly."
                render(:action=> "new")
            else
                @b.save()
                @b.errors.clear
                @user = User.find_by_id(session["id"])
                print @user
                #UserMailer.welcome_email(@user).deliver
                redirect_to(:controller => "book")
            end
        else
            flash[:notice] = "Please log in in order to sell a book."
            render(:action => "new")
        end
    end
end
