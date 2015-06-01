class BulletinsController < ApplicationController
  def index
    @bulletins = Bulletin.all
  end

  def show
    @bulletin = Bulletin.find(params[:id])
  end

  def new
    @bulletin = Bulletin.new
  end

  def create
    bulletin = Bulletin.new(bulletin_params)
    if bulletin.save
      redirect_to bulletin_path(bulletin)
    else
      render :new
      flash[:errors] = bulletin.errors.full_messages.join(", ")
    end
  end

  def edit
    @bulletin = Bulletin.find(params[:id])
  end

  def update
    bulletin = Bulletin.find(params[:id])
    if bulletin.update(bulletin_params)
      redirect_to bulletin_path(bulletin)
    else
      render :edit
      flash[:errors] = bulletin.errors.full_messages.join(", ")
    end
  end

  def destroy
    bulletin = Bulletin.find(params[:id])
    bulletin.destroy
    redirect_to bulletins_path
  end

  private

  def bulletin_params
    params.require(:bulletin).permit(:body)
  end

end
