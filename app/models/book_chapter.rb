# frozen_string_literal: true

# == Schema Information
#
# Table name: BookChapters
#
#  id          :integer          not null, primary key
#  code        :integer          not null
#  BookId      :integer
#  name        :string(255)      not null
#  description :text
#  isVirtual   :boolean          default(FALSE), not null
#  createdAt   :datetime         not null
#  updatedAt   :datetime         not null
#
class BookChapter < ActiveRecord::Base
  self.table_name = 'BookChapters'

  belongs_to :book, class_name: :Book, foreign_key: :BookId

  has_many :lesson_details, class_name: :LessonDetail, foreign_key: :BookChapterId
  has_many :book_videos, class_name: :BookVideo, foreign_key: :BookChapterId
  has_many :homework_videos, class_name: :HomeworkVideo, foreign_key: :BookChapterId
end
