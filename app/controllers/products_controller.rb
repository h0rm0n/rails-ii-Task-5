class ProductsController < ApplicationController
   def index
      @products = Product.all
   end

   def new
      @product = Product.new
   end

   def show
      @product = Product.find(params[:id])
   end

   def create
      prodcut = Product.new(params[:product])
      product.save
      reditect_to product
   end
end
