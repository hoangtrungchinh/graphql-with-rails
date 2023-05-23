# frozen_string_literal: true

class LessonDetail < ActiveRecord::Base
  self.table_name = 'LessonDetails'

  belongs_to :book_chapter, class_name: :BookChapter, foreign_key: :BookChapterId
  belongs_to :course, class_name: :Course, foreign_key: :CourseId
  belongs_to :zoom_lesson, class_name: :ZoomLesson, foreign_key: :ZoomLessonId
end
