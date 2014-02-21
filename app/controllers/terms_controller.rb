class TermsController < ApplicationController
  def new
  	@term = Term.new
  end

  def index
    @terms = Term.all
  end

  def edit
    @term = Term.find(params[:id])
  end

  def update
    term = Term.find(params[:id])
    term.update_attributes(term_params)
    redirect_to term
  end

  def create
  	term = Term.new(term_params)
  	term.save
  	redirect_to term
  end

  def show
    @term = Term.find(params[:id])
  end

  def destroy
    term = Term.find (params[:id])
    term.destroy
    redirect_to terms_path
  end

  private
  def term_params
    params.require(:term).permit(:word, :link, :definition, :quote)
  end
end
