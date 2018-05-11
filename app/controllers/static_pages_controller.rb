class StaticPagesController < ApplicationController
  def home
    @banners = Banner.all
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
    @jobs = Job.all
  end
end