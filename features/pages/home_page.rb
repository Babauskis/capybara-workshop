class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    #Apimation home page element initialization
    @button_log_in = Element.new(:css, "#login-b")
    @button_sign_up = Element.new(:css, "#signup-b")
    #Sign up form element initialization
    @form_sign_up = Element.new(:css, "#signup")
    @input_email_sign_up = Element.new(:css, "#signup input[type='email']")
    @input_password_sign_up = Element.new(:css, "input[name='password1']")
    @input_repassword_sign_up= Element.new(:css, "input[name='password2']")
    @input_project_name_sign_up= Element.new(:css, "input[name='project_name']")
    @button_close_sign_up = Element.new(:css, "#signup .closecross")
    #Log in form element initialization
    @form_log_in = Element.new(:css, '#login')
    @input_email_log_in = Element.new(:css, "#login input[name='login']")
    @input_password_log_in = Element.new(:css, "input[name='password']")
    @button_log_in_form = Element.new(:css, ".button-block")
    @error_msg_log_in = Element.new(:css, "form[action='/login'] .alert-danger .errorText")
  end

  def isVisible
    @button_sign_up.isVisible
    @button_log_in.isVisible
  end

  def load
    visit('/legacy')
  end

  def openSignUp
    @button_sign_up.click
    @form_sign_up.isVisible
    @button_close_sign_up.isVisible
  end

  def enterEmailSignUp(email)
    @input_email_sign_up.send_keys(email)
  end

  def enterPasswordSignUp(password)
    @input_password_sign_up.send_keys(password)
  end

  def enterRePasswordSignUp(repassword)
    @input_repassword_sign_up.send_keys(repassword)
  end

  def enterProjectNameSignUp(project_name)
    @input_project_name_sign_up.send_keys(project_name)
  end

  def closeSignUp
    @button_close_sign_up.isVisible
    @button_close_sign_up.click
  end

  def openLogIn
    @button_log_in.click
    @form_log_in.isVisible
  end

  def enterEmailLogIn(email)
     @input_email_log_in.send_keys(email)
  end

  def enterPasswordLogIn(password)   
     @input_password_log_in.send_keys(password)
  end

  def selectLogin
    @button_log_in_form.click
  end

  def errorLogInMsgVisible
    @error_msg_log_in.visible?
  end 
end