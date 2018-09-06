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

FactoryBot.define do
  factory :trial do
    name "MyString"
    boolean ""
    clients nil
    items ""
  end
end
