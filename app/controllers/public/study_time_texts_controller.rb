class Public::StudyTimeTextsController < ApplicationController
  def index
    @user = current_user
    study_time_ids = current_user.study_times.map { |study_time| study_time.id }
    @study_texts = StudyTimeText.where(study_time_id: study_time_ids).group(
    :study_text_id).select(
    'study_text_id,study_time_id,count(study_time_id)as count').order('count').limit(3).map { |item| item.study_text }
  end

  private

  def study_time_text_params
    params.require(:study_time_text).permit(:user_id)
  end
end

