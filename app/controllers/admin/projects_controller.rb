class Admin::ProjectsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @company = Company.find(params[:company_id])

    if params[:latest] #新しい順
      @projects = @company.projects.latest.page(params[:page])
    elsif params[:old] == true #古い順
      @projects = @company.projects.old.page(params[:page])
    else
      @projects = @company.projects.page(params[:page])
    end
  end

  def show
    @company = Company.find(params[:company_id])
    @project = Project.find(params[:id])
    @project_comment = ProjectComment.new
    @project_tags = @project.tags
  end

  def edit
    @company = Company.find(params[:company_id])
    @project = Project.find(params[:id])
    # 編集フォームで登録済のタグを初期値として表示する為に必要
    @tag_list = @project.tags.pluck(:tag_name).join(',')
  end

  def update
    @company = Company.find(params[:company_id])
    @project = Project.find(params[:id])
    # 受け取った値を,で区切って配列にする
    tag_list = params[:project][:tag_name].split(',')
    if @project.update(project_params)
      # project.rbで設定したsave_tags(sent-tags)メソッドを発動
      # 結果として@projectにタグを保存している。詳しい処理内容はproject.rbで確認
      @project.save_tags(tag_list)
      redirect_to admin_company_project_path(@company, @project), notice: "プロジェクト情報を更新しました"
    else
      @company = Company.find(params[:company_id])
      render :edit
    end
  end

  def destroy
    @company = Company.find(params[:company_id])
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to  admin_company_projects_path(@company), alert: "プロジェクトを削除しました"
  end

  private

  def project_params
    params.require(:project).permit(:name, :start_date, :end_date, :introduction, :contract_amount, :order_status, :progress_status, :contract_amount, project_images:[])
  end

end
