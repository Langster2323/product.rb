class ProductController < ApplicationController
  #CRUD
  def index
    render 'product/index.html.erb', locals: {
      product: Product.all
    }
  end

  def show
    if Product.exists?(params[:id])
      render template: 'product/show.html.erb', locals: {
        product: Product.find(params[:id])
      }
    else
      render html: "Not Found", status: 404
    end
  end
end
