class NoticeController < ApplicationController
  before_action :set_notice, only: %i[show edit update destroy]
  def index
    @notices = Notices.all
  end

  def show
  end

  def new
    @notice = Notice.new
  end

  def edit
  end

  def create
    @notice = Notice.new(notice_params)

    if @notice.save
      redirect_to '/notices'
    else
      render :new
    end
  end

  def update
    if @notice.update(notice_params)
      redirect_to '/notices'
    else
      render :edit
  end

  def destroy
  end

  private

  def set_notice
    @notice = Notice.find(params[:id])
  end

  def notice_params
    params.require(:notice).permit(:title, :description, :body, :publish_at, :user_id)
  end
end
