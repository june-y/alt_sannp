# == Schema Information
#
# Table name: clients
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  primary_pm :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :client do
    name "MyString"
    primary_pm "MyString"
    trials ""
  end
end
