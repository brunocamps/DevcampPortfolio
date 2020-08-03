class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    #Create a custom scope

    def self.angular
        where(subtitle: 'Angular')
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

    #implement a callback

    after_initialize :set_defaults

    def set_defaults 
        #have the ability to set default values
        self.main_image ||= "https://via.placeholder.com/600x400"
        self.thumb_image ||= "https://via.placeholder.com/350x200"
    end
end

if self.main_image == nil
    self.main_image = "https://via.placeholder.com/350x200"
end
