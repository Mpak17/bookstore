# frozen_string_literal: true

module PageObjects
  module Sections
    class Footer < SitePrism::Section
      element :footer_menu, 'ul.list-inline'
      element :footer_mail, '.general-nav-mail'
      element :footer_phone, '.general-nav-number'
    end
  end
end
