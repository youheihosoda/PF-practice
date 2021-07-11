class AddUserIdToStudyTimeTexts < ActiveRecord::Migration[5.2]
  def change
    add_column :study_time_texts, :user_id, :integer
  end
end
