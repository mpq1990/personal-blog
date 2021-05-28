# frozen_string_literal: true

class Topic < ApplicationRecord
  validates :title, presence: true

  has_many :blogs

  scope :with_blogs, -> { includes(:blogs).where.not(blogs: { id: nil }) }
end
