class WelcomeController < ApplicationController
  def index
    @link = Link.new
  end
end
