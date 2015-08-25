class TagsController < ApplicationController


  def create
    @tag = Tags.new(tag_params)
    if @tag.save?
      render :json => @tag.to_json
    else
      render :json => @tag.error.to_json
    end
  end

  def show
    @tag = Tag.find(params[:id])
    render :json => @tag.to_json
  end


  private
  def tag_params
    @tag.permit(:name)
  end

end
