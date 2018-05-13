class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:css, '#start_button')
    @form_sign_up = Element.new(:css, '#signup')
    @input_name_contact_us = Element.new(:css, '#name')
    @button_sign_up = Element.new(:css, '#signup-b')
    @input_email_sign_up = Element.new(:css, "#signup input[type='email']")
    @input_password_sign_up = Element.new(:css, "input[name='password1']")
    @input_repassword_sign_up= Element.new(:css, "input[name='password2']")
    @input_project_name_sign_up= Element.new(:css, "input[name='project_name']")
    @button_close_sign_up = Element.new(:css, '#signup .closecross')
    
    @button_log_in = Element.new(:css, '#login-b')
    @form_log_in = Element.new(:css, '#login')
    @input_email_log_in = Element.new(:css, "#login input[name='login']")
    @input_password_log_in = Element.new(:css, "input[name='password']")
    @button_log_in_form = Element.new(:css, '.button-block')

  end

  def isVisible
    @button_start.isVisible
    @input_name_contact_us.isVisible
    @button_sign_up.isVisible

  end

  def load
    visit('/legacy')
  end

  # def openTryNow
  #   @button_start.click
  #   @form_sign_up.isVisible
  #   @button_close_try_now.isVisible
  # end

  # def closeTryNow
  #   @button_close_try_now.click
  # end

  # def enterName(name)
  #   @input_name_contact_us.send_keys(name)
  # end

  # def clearName
  #   @input_name_contact_us.clear
  # end

  def openSignUp
    @button_sign_up.click
    @form_sign_up.isVisible
    @button_close_sign_up.isVisible
  end

  def fillSignUpForm(email, password1, password2, project_name)
    @input_email_sign_up.send_keys(email)
    @input_password_sign_up.send_keys(password1)
    @input_repassword_sign_up.send_keys(password2)
    @input_project_name_sign_up.send_keys(project_name)
  end

  def closeSignUp
    @button_close_sign_up.click
    @button_close_sign_up.isVisible
  end

  def openLogIn
    @button_log_in.click
    @form_log_in.isVisible
  end

  def fillLogInForm(email, password)
    @input_email_log_in.send_keys(email)
    @input_password_log_in.send_keys(password)
  end

  def selectLogin
    @button_log_in_form.click
  end
end
