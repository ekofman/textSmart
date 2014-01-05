class CreateBooks < ActiveRecord::Migration
 def change
   create_table :books do |t|
        t.string :class_name
        t.string :book_name
        t.integer :user_id
        t.datetime :posting_date
        t.string :class_name
        t.string :class_number
        t.string :subject
        t.integer :edition
        t.string :condition
        t.integer :price
        t.string :duration
      t.timestamps
    end
  end
end
