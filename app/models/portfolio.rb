# frozen_string_literal: true

class Portfolio < ApplicationRecord
  has_many :technologies

  accepts_nested_attributes_for :technologies,
                                reject_if: ->(attrs) { attrs['name'].blank? }

  validates :title, :body, presence: true

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  # Also a scope
  def self.react
    where(subtitle: 'React')
  end

  scope :by_position, -> { order('position ASC') }

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
end

#######
# x ||= y is just like
# if(!x) x = y
#######
