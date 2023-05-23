# frozen_string_literal: true

class WatchedHomeworkVideo < ActiveRecord::Base
  self.table_name = 'WatchedHomeworkVideos'

  belongs_to :homework_video, class_name: :HomeworkVideo, foreign_key: :HomeworkVideoId
  belongs_to :student, class_name: :Student, foreign_key: :StudentId
end
