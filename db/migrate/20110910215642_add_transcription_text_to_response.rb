class AddTranscriptionTextToResponse < ActiveRecord::Migration
  def change 
    add_column :responses, :transcription, :text
  end
end
