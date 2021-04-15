# frozen_string_literal: true

module PageObjects
  module Sections
    class Header < SitePrism::Section
      element :store_name, 'a.navbar-brand'
      element :menu, '.nav.navbar-nav'
    end
  end
end
