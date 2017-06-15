class DeviseRegistrationController < DeviseTokenAuth::RegistrationsController
  # before_filter :configure_permitted_parameters


  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up).push(:name)
  # end



  # def create
  #   super do |resource|
  #
  #     #UsersMailer.welcome_email(resource.id).deliver_later
  #
  #
  #   end
  # end

end
