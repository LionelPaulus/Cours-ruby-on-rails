class Article < ApplicationRecord
  belongs_to :chapter

  scope :published, -> { where.not(published_at: nil) }
end
