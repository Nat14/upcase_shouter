class HashtagsController < ApplicationController
  def show
    @hashtags = params[:id]
    @shouts = Shout.search("##{@hashtags}")
  end
end
