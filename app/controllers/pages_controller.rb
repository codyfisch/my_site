class PagesController < ApplicationController
  def home
    @title = "Home"
    @big_title = "welcome."
  end

  def contact
    @title = "Contact"
    @big_title = "contact."
  end

  def about
    @title = "About"
    @big_title = "about."
  end

end
