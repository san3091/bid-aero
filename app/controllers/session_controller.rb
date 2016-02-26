class SessionController < ApplicationController

  def new
  end

  def create
    @company = Company.find_by_email(params[:login][:email]).
      try(:authenticate, params[:login][:password])
    if @company
      session[:company_id] = @company.id
    else
      redirect_to root_path, notice: "Wrong password"
    end

  end

  def destroy
    session[:company_id] = nil
    redirect_to root_path
  end

end
