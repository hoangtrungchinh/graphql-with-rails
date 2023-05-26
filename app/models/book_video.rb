# frozen_string_literal: true

# == Schema Information
#
# Table name: BookVideos
#
#  id            :integer          not null, primary key
#  code          :integer          not null
#  name          :string(255)      not null
#  description   :text
#  BookChapterId :integer
#  fileName      :string(255)
#  duration      :string(255)
#  createdAt     :datetime         not null
#  updatedAt     :datetime         not null
#
class BookVideo < ActiveRecord::Base
  self.table_name = 'BookVideos'

  belongs_to :book_chapter, class_name: :BookChapter, foreign_key: :BookChapterId

  has_many :watched_book_videos, class_name: :WatchedBookVideo, foreign_key: :BookVideoId
  has_many :students, class_name: :Student, through: :watched_book_videos
end
