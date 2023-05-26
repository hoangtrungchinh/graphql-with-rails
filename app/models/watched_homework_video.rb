# frozen_string_literal: true

# == Schema Information
#
# Table name: WatchedHomeworkVideos
#
#  id              :integer          not null, primary key
#  StudentId       :integer
#  HomeworkVideoId :integer
#  createdAt       :datetime         not null
#  updatedAt       :datetime         not null
#
class WatchedHomeworkVideo < ActiveRecord::Base
  self.table_name = 'WatchedHomeworkVideos'

  belongs_to :homework_video, class_name: :HomeworkVideo, foreign_key: :HomeworkVideoId
  belongs_to :student, class_name: :Student, foreign_key: :StudentId
end
