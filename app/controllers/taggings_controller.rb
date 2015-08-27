class TaggingsController < ApplicationController

  def create
    @tagging = Tagging.new(tagging_params)
    if @tagging.save
      render :json => @tagging.to_json
    else
      render :json => @tagging.error.to_json
    end
  end

  def show
    @tagging = Tagging.find(params[:id])
    render :json => @tagging.to_json
  end


  private
  def tagging_params
    params.permit(:note_id, :tag_id)
  end
end
