# frozen_string_literal: true

class TopicsController < ApplicationController
  before_action :set_sidebar_topics
  layout 'blog'
  def index
    @topics = Topic.page(params[:page]).per(5)
  end

  def show
    @topic = Topic.find(params[:id])

    @blogs = if logged_in?(:site_admin)
               @topic.blogs.recent.page(params[:page]).per(5)
             else
               @topic.blogs.published.recent.page(params[:page]).per(5)
             end
  end

  def set_sidebar_topics
    @side_bar_topics = Topic.with_blogs
  end
end
