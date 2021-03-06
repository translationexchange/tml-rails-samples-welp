class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from StandardError do |e|
    pp e, e.backtrace
    raise e
  end

  before_filter :set_i18n_locale

private

  #def current_locale
  #  'ru'
  #end

  def set_i18n_locale
    I18n.enforce_available_locales = false
    I18n.locale = tml_current_locale
  end

end
