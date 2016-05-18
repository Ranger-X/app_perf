class TransactionsController < ApplicationController

  def index
    @transactions = @current_application.transaction_endpoints
  end

  def show
    @transaction = @current_application.transaction_endpoints.find(params[:id])
    @transaction_samples = @current_application
      .transaction_sample_data
      .where(:name => "request.rack")
      .where(:transaction_endpoint_id => @transaction)
  end

end