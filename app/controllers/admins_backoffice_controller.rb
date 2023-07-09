class AdminsBackofficeController < ApplicationController
  authenticate_admin!
  layout 'admins_backoffice'
end
