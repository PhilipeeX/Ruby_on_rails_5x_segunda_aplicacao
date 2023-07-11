class AdminsBackofficeController < ApplicationController
  before_action :authenticate_admin!
  layout 'admins_backoffice'
  def destroy
    sign_out(current_admin)
    redirect_to root_path, notice: "Você foi desconectado com sucesso."
  end
end
