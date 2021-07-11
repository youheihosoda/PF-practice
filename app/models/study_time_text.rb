class StudyTimeText < ApplicationRecord
  belongs_to :study_time
  belongs_to :study_text
  belongs_to :user
end
