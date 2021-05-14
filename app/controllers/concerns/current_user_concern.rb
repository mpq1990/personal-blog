# frozen_string_literal: true

module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    # OpenStruct.new(name: 'some name', first_name: 'Guest', last_name: 'User', email: 'guest@example.de')
    guest = GuestUser.new
    guest.name = 'Guest User'
    guest.first_name = 'Guest'
    guest.last_name = 'User'
    guest.email = 'guest@example.com'
    guest
  end
end
