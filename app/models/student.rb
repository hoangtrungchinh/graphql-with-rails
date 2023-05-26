# frozen_string_literal: true

# == Schema Information
#
# Table name: Students
#
#  id            :integer          not null, primary key
#  uid           :string(255)      not null
#  SchoolId      :integer
#  GenderId      :integer
#  SchoolYearId  :integer
#  firstName     :string(255)      not null
#  lastName      :string(255)      not null
#  firstNameKana :string(255)      not null
#  lastNameKana  :string(255)      not null
#  fullName      :string(255)      not null
#  fullNameKana  :string(255)      not null
#  password      :string(255)      not null
#  deviceCode    :string(255)
#  frozen        :boolean          default(FALSE), not null
#  removed       :boolean          default(FALSE), not null
#  createdAt     :datetime         not null
#  updatedAt     :datetime         not null
#
class Student < ActiveRecord::Base
  self.table_name = 'Students'

  belongs_to :brand, class_name: :Brand, foreign_key: :BrandId
  belongs_to :corporation, class_name: :Corporation, foreign_key: :CorporationId
  belongs_to :gender, class_name: :Gender, foreign_key: :GenderId
  belongs_to :school, class_name: :School, foreign_key: :SchoolId
  belongs_to :school_year, class_name: :SchoolYear, foreign_key: :SchoolYearId

  has_many :student_courses, class_name: :StudentCourse, foreign_key: :StudentId
  has_many :courses, class_name: :Course, through: :student_courses

  has_many :watched_zoom_lessons, class_name: :WatchedZoomLesson, foreign_key: :StudentId
  has_many :zoom_lessons, class_name: :ZoomLesson, through: :watched_zoom_lessons

  has_many :watched_book_videos, class_name: :WatchedBookVideo, foreign_key: :StudentId
  has_many :book_videos, class_name: :BookVideo, through: :watched_book_videos

  has_many :watched_homework_videos, class_name: :WatchedHomeworkVideo, foreign_key: :StudentId
  has_many :homework_videos, class_name: :HomeworkVideo, through: :watched_homework_videos
end
