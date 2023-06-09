class Public::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @company = Company.find(params[:company_id])
    @project = Project.find(params[:project_id])
    favorite = current_user.favorites.new(project_id: @project.id)
    favorite.save
    # いいね通知も作成する
    @project.create_notification_favorite!(current_user)
  end

  def destroy
    @company = Company.find(params[:company_id])
    @project = Project.find(params[:project_id])
    favorite = current_user.favorites.find_by(project_id: @project.id)
    favorite.destroy
  end

end
