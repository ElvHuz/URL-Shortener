class ShortenerController < ApplicationController
  def create
    @url = params[:url]
  end
end
