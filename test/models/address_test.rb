# == Schema Information
#
# Table name: addresses
#
#  id         :bigint           not null, primary key
#  name       :string
#  city_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
