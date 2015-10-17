class CorpusEntriesController < ApplicationController
  before_action :set_corpus_entry, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @corpus_entries = CorpusEntry.all
    respond_with(@corpus_entries)
  end

  def show
    respond_with(@corpus_entry)
  end

  def new
    @corpus_entry = CorpusEntry.new
    @corpus_entry.create_document
  end

  def edit
  end

  def create
    @corpus_entry = CorpusEntry.new(corpus_entry_params)
    @corpus_entry.document
    
    if @corpus_entry.save
      redirect_to @corpus_entry
    else
      render action: :new
    end
  end

  def update
    @corpus_entry.update(corpus_entry_params)
    respond_with(@corpus_entry)
  end

  def destroy
    @corpus_entry.destroy
    respond_with(@corpus_entry)
  end

  private
    def set_corpus_entry
      @corpus_entry = CorpusEntry.find(params[:id])
    end

    def corpus_entry_params
      params.require(:corpus_entry).permit(:note, document_attributes: [:genre])
    end
end
