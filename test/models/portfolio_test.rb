# == Schema Information
#
# Table name: portfolios
#
#  id              :bigint           not null, primary key
#  uid             :string
#  name            :string
#  description     :text
#  status          :string
#  organization_id :bigint
#  user_id         :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class PortfolioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
