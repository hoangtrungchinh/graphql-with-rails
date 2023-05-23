# frozen_string_literal: true

class BookVideo < ActiveRecord::Base
  self.table_name = 'BookVideos'

  belongs_to :book_chapter, class_name: :BookChapter, foreign_key: :BookChapterId

  has_many :watched_book_videos, class_name: :WatchedBookVideo, foreign_key: :BookVideoId
  has_many :students, class_name: :Student, through: :watched_book_videos
end
