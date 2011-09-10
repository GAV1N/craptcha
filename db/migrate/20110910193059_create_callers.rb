class CreateCallers < ActiveRecord::Migration
  def change
    create_table :callers do |t|
      t.string :phone, :limit => 10

      t.timestamps
    end    
    add_index :callers, :phone
  end
end
