class ProductsController < ApplicationController
    before_action :set_product, only: [:show]
    
    def index
        @products = Product.all    #uso da variavel de instancia para que todos os elementos da tabela products sejam exibidos na view products/index
    end 

    def show; end

    def new
        @product = Product.new 
    end 

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to product_url(@product)
        else
            render :new, status: :unprocessable_entity
        end 
    end

    private

    
    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:name, :quantity, :price)
    end
end
