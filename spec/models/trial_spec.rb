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

require 'rails_helper'

RSpec.describe Trial, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
