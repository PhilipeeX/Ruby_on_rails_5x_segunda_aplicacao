class UsersBackofficeController < ApplicationController
  before_action :authenticate_user!
  layout 'users_backoffice'
  def destroy
    sign_out(current_user)
    redirect_to root_path, notice: "Você foi desconectado com sucesso."
  end
end
