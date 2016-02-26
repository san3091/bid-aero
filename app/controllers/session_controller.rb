class SessionController < ApplicationController
  def new
  end

  def create

    p"*"*600
    p params
    p session[:name]
    p params[:session][:name] 
    @company = Company.find_by_email(params[:session][:email])
    p @company
    p"*"*600
    redirect_to root_path unless @company

    session[:company_id] = @company.id
    redirect_to @company 
  end

  def destroy
    session[:company_id] = nil
    redirect_to root_path
  end

  private

  def set_session
    params.require(:session).permit(:name, :email, :password)
  end
end
