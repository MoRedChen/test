class ProductsController < ApplicationController
    before_action :authenticate_user!, only: [:a01,:a02]
   
    def index
    end

    def a01
    end

    def a02
    end
end
