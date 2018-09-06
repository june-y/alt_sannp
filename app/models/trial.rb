# == Schema Information
#
# Table name: trials
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  isActive   :boolean
#  clients_id :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trial < ApplicationRecord
  belongs_to :client, optional: true, foreign_key: 'client_id'
  has_many :items
  validates :name,:client_id, presence: true
end
