class AddRecordingUrlToResponse < ActiveRecord::Migration
  def change
    add_column :responses, :recording_url, :string
  end
end
