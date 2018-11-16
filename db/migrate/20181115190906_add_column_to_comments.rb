class AddColumnToComments < ActiveRecord::Migration[5.1] 
    def change 
      add_reference :comments, :user, foreign_key: true 
      add_reference :comments, :blog, foreign_key: true 
    end 
end 
