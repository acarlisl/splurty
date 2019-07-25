class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
  end

  # Creates a new entry for a quote in our database, but doesn't add the data
  # (just the empty fields)
  def new
    @quote = Quote.new
  end

  def create
    Quote.create(quote_params)
    if @quote.invalid?
      flash[error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end
end
