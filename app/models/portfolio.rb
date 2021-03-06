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

class Portfolio < ApplicationRecord
	# Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  belongs_to :user
  belongs_to :organization, optional: true
  has_many :cards, dependent: :destroy


  # For active storage
   has_one_attached :thumbnail
end
