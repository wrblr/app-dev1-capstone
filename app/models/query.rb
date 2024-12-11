# == Schema Information
#
# Table name: queries
#
#  id         :bigint           not null, primary key
#  image      :string
#  topic      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Query < ApplicationRecord
end
