class MemosController < ApplicationController

  def index
    @memos = Memo.all
    @memo = Memo.new
  end

  def new
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to root_path
  end

  def show
    @memo = Memo.find(params[:id]) 
  end

  def edit
    @memo = Memo.find(params[:id]) 
  end

  def update
    @memo = Memo.find(params[:id]) 
    memo.update(memo_params)
    redirect_to root_path(memo.id)
  end

  def destroy
    @memo = Memo.find(params[:id]) 
    memo.destroy
    redirect_to root_path
  end

  private
  def memo_params
    params.require(:memo).permit(:title, :content)
  end

end
