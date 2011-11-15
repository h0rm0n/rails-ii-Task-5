class ProductsController < ApplicationController
   before_filter :authenticate_user!, :except => [:index, :show]
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
      @product = Product.new(params[:product])
      if @product.save
         redirect_to products_path
      else
         render('products/index')
      end
   end
end
