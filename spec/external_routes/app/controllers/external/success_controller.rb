class External::SuccessController < ActionController::Base
  def index
    render :text => "success"
  end
end