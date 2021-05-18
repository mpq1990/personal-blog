# frozen_string_literal: true

module PortfoliosHelper
  def image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end

  def portfolio_img(img, type)
    if img.model.main_image? || img.model.thumb_image?
      img.to_s
    elsif type == 'thumb'
      image_generator(height: 350, width: 200)
    elsif type == 'main'
      image_generator(height: 600, width: 400)
    end
  end
end

# self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
# self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
