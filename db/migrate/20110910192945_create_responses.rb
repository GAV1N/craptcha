class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :posting_id
      t.integer :caller_id
      t.string :ip
      t.string :pin, :limit => 8  
      t.string :city
      t.float :lat
      t.float :lng
      t.datetime :generated_at
      t.datetime :called_at
      t.string :twilio_sid

      t.timestamps
    end             
    add_index :responses, [:posting_id, :caller_id]
    add_index :responses, :posting_id
    add_index :responses, :caller_id
    add_index :responses, :twilio_sid
  end
end
