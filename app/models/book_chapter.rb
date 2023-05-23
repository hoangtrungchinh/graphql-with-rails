# frozen_string_literal: true

class BookChapter < ActiveRecord::Base
  self.table_name = 'BookChapters'

  belongs_to :book, class_name: :Book, foreign_key: :BookId

  has_many :lesson_details, class_name: :LessonDetail, foreign_key: :BookChapterId
  has_many :book_videos, class_name: :BookVideo, foreign_key: :BookChapterId
  has_many :homework_videos, class_name: :HomeworkVideo, foreign_key: :BookChapterId
end
