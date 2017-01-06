class HomeController < ApplicationController

  def index
    AppearanceChannel.broadcast_to(current_user, "hello, world")
  end
end
