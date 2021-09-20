class HomesController < ApplicationController
  def top
  end
  
  def about
    @about = home_about_path
  end

end
