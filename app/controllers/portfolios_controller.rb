class PortfoliosController < ApplicationController
    def index #list all objects
        @portfolio_items = Portfolio.all #turn this available to the view
    end

end
