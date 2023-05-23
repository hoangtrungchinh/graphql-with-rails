# frozen_string_literal: true

class WatchedZoomLesson < ActiveRecord::Base
  self.table_name = 'WatchedZoomLessons'

  belongs_to :student, class_name: :Student, foreign_key: :StudentId
  belongs_to :zoom_lesson, class_name: :ZoomLesson, foreign_key: :ZoomLessonId
end
