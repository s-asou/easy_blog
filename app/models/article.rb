# frozen_string_literal: true

# Blog Article model
#
# @attr [Integer] id    ID
# @attr [String]  title title
# @attr [Text]    text  content
class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
end
