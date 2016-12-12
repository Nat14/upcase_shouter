class HashtagsController < ApplicationController
  def show
    @hashtags = params[:id]
    @shouts = []
  end
end
