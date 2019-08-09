# ブログ記事モデル
#
# @attr [Integer] id    ブログ記事ID
# @attr [String]  title ブログ記事タイトル
# @attr [Text]    text  ブログ記事内容
class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
end
