class DatabaseController < ApplicationController

  def index
    @transaction_samples = @current_application.transaction_sample_data
      .where(:category => "active_record")
      .group_by {|t| t.payload[:name] }
  end

end