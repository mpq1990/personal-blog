# frozen_string_literal: true

module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      (link_to 'Login', new_user_session_path) +
        + '<br>'.html_safe +
        (link_to 'Register', new_user_registration_path)
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      tag.p(greeting, class: 'source-greeting')
    end
  end

  def copyright_generator
    MpqViewTool::Renderer.copyright 'Majid', 'All rights reserved'
  end
end
