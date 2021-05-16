# frozen_string_literal: true

class Portfolio < ApplicationRecord
  has_many :technologies

  accepts_nested_attributes_for :technologies,
                                reject_if: ->(attrs) { attrs['name'].blank? }

  include Placeholder

  validates :title, :body, :main_image, :thumb_image, presence: true

  # Also a scope
  def self.react
    where(subtitle: 'React')
  end

  scope :by_position, -> { order('position ASC') }

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
    self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
  end
end

#######
# x ||= y is just like
# if(!x) x = y
#######
