class News < ApplicationRecord
  belongs_to :news

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  validates :category_id, numericality: { other_than: 0, message: "Select" }
end
