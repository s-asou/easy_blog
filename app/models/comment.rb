# frozen_string_literal: true

# Blog comment model
#
# @attr [Integer] id        ID
# @attr [String]  commenter commenter
# @attr [Text]    body      content
class Comment < ApplicationRecord
  belongs_to :article
end
