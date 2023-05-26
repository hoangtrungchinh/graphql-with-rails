# frozen_string_literal: true

# == Schema Information
#
# Table name: ZoomLessons
#
#  id                  :integer          not null, primary key
#  zoomLink            :string(255)      not null
#  zoomTitle           :string(255)      not null
#  replayFileName      :string(255)
#  startDateTime       :datetime         not null
#  replayStartDateTime :datetime
#  endDateTime         :datetime         not null
#  replayEndDateTime   :datetime
#  createdAt           :datetime         not null
#  updatedAt           :datetime         not null
#
class ZoomLesson < ActiveRecord::Base
  self.table_name = 'ZoomLessons'

  has_many :watched_zoom_lessons, class_name: :WatchedZoomLesson, foreign_key: :ZoomLessonId
  has_many :lesson_details, class_name: :LessonDetail, foreign_key: :ZoomLessonId
end
