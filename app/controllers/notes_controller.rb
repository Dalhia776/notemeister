class NotesController < ApplicationController

  def index
    @notes = Note.all
    render :json => @notes.to_json
  end

  def create
    @note = Note.new(note_params)
    if @note.save?
      render :json => @note.to_json
    else
      render :json => @note.error.to_json
    end
  end

  def show
    @note = Note.find(params[:id])
    render :json => @note.to_json
  end



  private

  def note_param
    params.permit(:title, :body, :tag_id)
  end

end
