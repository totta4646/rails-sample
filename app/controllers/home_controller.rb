class HomeController < ApplicationController
  def index
    @sample_object = HomeService.find_all(HomeService::OPTIONS_TEST)
  end
end
