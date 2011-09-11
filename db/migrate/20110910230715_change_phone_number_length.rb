class ChangePhoneNumberLength < ActiveRecord::Migration
  def change
    change_column :callers, :phone, :string, :limit => 12
  end
end
