# frozen_string_literal: true

# == Schema Information
#
# Table name: Events
#
#  id                 :integer          not null, primary key
#  title              :string(255)      not null
#  thumbnailFileName  :string(255)
#  zoomLink           :string(255)
#  summary            :text
#  heading            :string(255)
#  description        :text
#  imageFileName1     :string(255)
#  imageFileName2     :string(255)
#  imageFileName3     :string(255)
#  imageFileName4     :string(255)
#  imgCaption1        :string(255)
#  imgCaption2        :string(255)
#  imgCaption3        :string(255)
#  imgCaption4        :string(255)
#  youtubeLink        :string(255)
#  notes              :text
#  googleFormLink     :string(255)
#  targetAudience     :string(255)
#  eventStartDateTime :datetime         not null
#  eventEndDateTime   :datetime         not null
#  createdAt          :datetime         not null
#  updatedAt          :datetime         not null
#  imgPosition1       :integer
#  imgPosition2       :integer
#  imgPosition3       :integer
#  imgPosition4       :integer
#
class Event < ActiveRecord::Base
  self.table_name = 'Events'
end
