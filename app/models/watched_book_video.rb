# frozen_string_literal: true

# == Schema Information
#
# Table name: WatchedBookVideos
#
#  id          :integer          not null, primary key
#  StudentId   :integer
#  BookVideoId :integer
#  createdAt   :datetime         not null
#  updatedAt   :datetime         not null
#
class WatchedBookVideo < ActiveRecord::Base
  self.table_name = 'WatchedBookVideos'

  belongs_to :book_video, class_name: :BookVideo, foreign_key: :BookVideoId
  belongs_to :student, class_name: :Student, foreign_key: :StudentId
end
