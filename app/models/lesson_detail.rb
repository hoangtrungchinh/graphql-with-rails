# frozen_string_literal: true

# == Schema Information
#
# Table name: LessonDetails
#
#  id                         :integer          not null, primary key
#  ZoomLessonId               :integer
#  BookChapterId              :integer
#  CourseId                   :integer
#  mainTitle                  :string(255)      not null
#  subTitle                   :string(255)      not null
#  imageFileName              :string(255)
#  pageNumber                 :string(255)
#  description                :text
#  isVisible                  :boolean
#  offlineLessonStartDateTime :datetime
#  offlineLessonEndDateTime   :datetime
#  startDateTime              :datetime
#  endDateTime                :datetime
#  createdAt                  :datetime         not null
#  updatedAt                  :datetime         not null
#
class LessonDetail < ActiveRecord::Base
  self.table_name = 'LessonDetails'

  belongs_to :book_chapter, class_name: :BookChapter, foreign_key: :BookChapterId
  belongs_to :course, class_name: :Course, foreign_key: :CourseId
  belongs_to :zoom_lesson, class_name: :ZoomLesson, foreign_key: :ZoomLessonId
end
