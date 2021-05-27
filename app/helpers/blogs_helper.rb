# frozen_string_literal: true

module BlogsHelper
  def gravitar_helper(user)
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
  end

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language = 'json')
      CodeRay.scan(code, language).div
    end
  end

  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)
    options = {
      fenced_code_blocks: true,
      autolink: true,
      lax_html_blocks: true
    }

    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end

  def blog_status_color(blog)
    return 'color: red' if blog.draft?
  end
end
