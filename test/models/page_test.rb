# == Schema Information
#
# Table name: pages
#
#  id         :bigint           not null, primary key
#  uid        :string
#  slug       :string
#  title      :string
#  content    :text
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
