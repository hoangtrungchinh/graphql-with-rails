# frozen_string_literal: true

class HomeworkVideo < ActiveRecord::Base
  self.table_name = 'HomeworkVideos'

  belongs_to :book_chapter, class_name: :BookChapter, foreign_key: :BookChapterId

  has_many :watched_homework_videos, class_name: :WatchedHomeworkVideo, foreign_key: :HomeworkVideoId
end
