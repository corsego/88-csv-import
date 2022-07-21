class UsersController < ApplicationController
  def import
    file = params[:file]
    return redirect_to users_path, notice: 'Only CSV please' unless file.content_type == 'text/csv'

    CsvImportUsersService.new.call(file)

    redirect_to users_path, notice: 'Users imported!'
  end

  def index
    @users = User.all
  end
end
