class StaticPagesController < ApplicationController
  def home
  end

  def solutions
  end

  def services
  end

  def content
  end

  def about_us
    @members = Member.all
  end

  def contact
  end
end