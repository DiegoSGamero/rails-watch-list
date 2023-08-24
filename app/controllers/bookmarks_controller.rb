class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[show create new]

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def show; end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)
  end

  def edit; end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
