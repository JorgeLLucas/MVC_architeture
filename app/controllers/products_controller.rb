class ProductsController < ApplicationController
    before_action :set_product, only: [:show]
    
    def index
        @products = Product.all    #uso da variavel de instancia para que todos os elementos da tabela products sejam exibidos na view products/index
    end 

    def show; end

    def new
        @product = Product.new 
    end 

    private

    def set_product
        @product = Product.find(params[:id])
    end
end
