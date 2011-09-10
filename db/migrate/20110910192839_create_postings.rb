class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.integer :user_id      
      t.string :title
      t.string :description
      t.string :craigslist_url

      t.timestamps
    end     
    
    add_index :postings, :user_id
  end
end
