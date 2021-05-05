class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.react
    where(subtitle: "React")
  end

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/350x200"
  end
end


#######
# x ||= y is just like
# if(!x) x = y
#######
