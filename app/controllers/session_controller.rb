class SessionController < ApplicationController
  def new
  end

  def create
    @company = Company.
      find_by(name: params[:name]).
      try(:authenticate, params[:password])
    redirect_to root_path unless @company

    sessions[:company_id] = @company
    redirect_to @company
  end

  def destroy
    session[:company_id] = nil
    redirect_to root_path
  end
end
