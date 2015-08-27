class NotesController < ApplicationController

  def index
    if params[:tag]
      @notes = Note.tagged_with(params[:tag])
      render :json => @notes.to_json
    else
      @notes = Note.all
      render :json => @notes.to_json
    end
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      render :json => @note.to_json
    else
      render :json => @note.error.to_json
    end
  end

  def show
    if (params[:tags].present?)
      @note.tags = Tag.where(:name => params[:tags].split(/\s*,\s*/))
      render :json => @note.tags.to_json
    else
      @note.tags = []
      render :json => @note.tags.to_json
    end
  end


  private

  def note_params
    params.permit(:title, :body, :all_tags)
  end

end
