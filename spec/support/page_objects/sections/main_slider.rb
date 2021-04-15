# frozen_string_literal: true

module PageObjects
  module Sections
    class MainSlider < SitePrism::Section
      element :ol, '.carousel-indicators'
      element :item, '.item'
      element :active_item, '.item.active'
      element :prev_link, 'a[data-slide=prev]'
      element :next_link, 'a[data-slide=next]'
    end
  end
end
