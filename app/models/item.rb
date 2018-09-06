# == Schema Information
#
# Table name: items
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  trials_id   :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ApplicationRecord
  belongs_to :trial, optional: true, foreign_key: 'trial_id'
  validates :name, :description, :trial_id, presence: true
end
