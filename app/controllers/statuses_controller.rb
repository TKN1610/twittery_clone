class StatusesController < ApplicationController
    def index
      @statuses = Status.all.order(created_at: :desc)
    end

    def new
      @status = Status.new
    end

    def create
      @status = Status.new(status_params)
      if @status.save
        redirect_to statuses_path, notice: "ツイートしました！"
      else
        render :new
      end
    end

    def destroy
      @status = Status.find(params[:id])
      @status.destroy
      redirect_to statuses_path, notice: "削除しました"
    end

    private

    def status_params
      params.require(:status).permit(:content)
    end
  end