class SessionController < ApplicationController
  def new
  end

  def create
    @company = Company.
      find_by(name: params[:name]).
      try(:authenticate, params[:password])
    return render action: 'new' unless @company

    sessions[:comany_id] = @company
    redirect_to companies_path
  end
end
