# frozen_string_literal: true

# == Schema Information
#
# Table name: HomeworkVideos
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
class HomeworkVideo < ActiveRecord::Base
  self.table_name = 'HomeworkVideos'

  belongs_to :book_chapter, class_name: :BookChapter, foreign_key: :BookChapterId

  has_many :watched_homework_videos, class_name: :WatchedHomeworkVideo, foreign_key: :HomeworkVideoId
end
