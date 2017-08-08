class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
  
  def portfolio
    if logged_in?(:site_admin)
    else
      redirect_to home_path, notice: "You are not authorized to access this page."
    end
  end
end
