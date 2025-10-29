class NotificationSettingsController < ApplicationController
  before_action :set_post
  before_action :set_notification_setting, only: %i[edit update]

  def new
    @notification_setting = @post.build_notification_setting
  end

  def create
    @notification_setting = @post.build_notification_setting(notification_setting_params)

    if @notification_setting.save
      redirect_to @post, notice: "通知設定が正常に作成されました。"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @notification_setting.update(notification_setting_params)
      redirect_to @post, notice: "通知設定が正常に更新されました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_notification_setting
    @notification_setting = @post.notification_setting
    redirect_to new_post_notification_setting_path(@post) unless @notification_setting
  end

  def notification_setting_params
    params.require(:notification_setting).permit(:notification_time, :notify_on_reaction, :notify_on_comment)
  end
end
