# frozen_string_literal: true

module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: 'some name', first_name: 'Guest', last_name: 'User', email: 'guest@example.de')
  end
end
