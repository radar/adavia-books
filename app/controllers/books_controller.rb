class BooksController < ApplicationController
  def create
    render json: { book: { title: params[:book][:title] } }, status: 201
  end
end
