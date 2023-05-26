# frozen_string_literal: true

# == Schema Information
#
# Table name: WatchedZoomLessons
#
#  id           :integer          not null, primary key
#  StudentId    :integer
#  ZoomLessonId :integer
#  attended     :boolean
#  createdAt    :datetime         not null
#  updatedAt    :datetime         not null
#
class WatchedZoomLesson < ActiveRecord::Base
  self.table_name = 'WatchedZoomLessons'

  belongs_to :student, class_name: :Student, foreign_key: :StudentId
  belongs_to :zoom_lesson, class_name: :ZoomLesson, foreign_key: :ZoomLessonId
end
