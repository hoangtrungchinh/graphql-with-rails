# frozen_string_literal: true

class ZoomLesson < ActiveRecord::Base
  self.table_name = 'ZoomLessons'

  has_many :watched_zoom_lessons, class_name: :WatchedZoomLesson, foreign_key: :ZoomLessonId
  has_many :lesson_details, class_name: :LessonDetail, foreign_key: :ZoomLessonId
end
