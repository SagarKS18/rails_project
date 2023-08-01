class ShopController < ApplicationController
  def index
    @cycle_gallery = Store.all
  end
end
