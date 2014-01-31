class TermsController < ApplicationController
  def new
  	@term = Term.new
  end

  def index
  end

  def create
  	term = Term.new(word: params[:term][:word], definition: params[:term][:definition])
  	term.save
  	redirect_to term
  end

  def show
    @term = Term.find(params[:id])
  end
end
