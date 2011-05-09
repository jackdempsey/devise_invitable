module DeviseInvitable::Controllers::Helpers
  protected
  def authenticate_inviter!
    send(:"authenticate_#{resource_name}!", true)
  end

  def after_accept_path_for(*args)
    after_sign_in_path_for(*args)
  end
end
ActionController::Base.send :include, DeviseInvitable::Controllers::Helpers
