# frozen_string_literal: true

module PageObjects
  module Pages
    class Home < SitePrism::Page
      set_url '/'

      section :header, PageObjects::Sections::Header, 'header'
      section :main_slider, PageObjects::Sections::MainSlider, '.carousel.slide'

      element :welcome_block, '.jumbotron'
      element :best_sellers, '.mb-35'

      section :footer, PageObjects::Sections::Footer, 'footer'
    end
  end
end
