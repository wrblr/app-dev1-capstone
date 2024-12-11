# == Schema Information
#
# Table name: messages
#
#  id         :bigint           not null, primary key
#  body_text  :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  query_id   :integer
#  user_id    :integer
#
class Message < ApplicationRecord
end
