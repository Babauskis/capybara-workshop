class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.isVisible
  end

  def validate_sign_up
    @pages.page_home.openSignUp
  end

  def submit_sign_up_form()
    user = Users.sign_up_form_user
    @pages.page_home.enterEmailSignUp(user.email)
    @pages.page_home.enterPasswordSignUp(user.password)
    @pages.page_home.enterRePasswordSignUp(user.repassword)
    @pages.page_home.enterProjectNameSignUp(user.project_name)
  end

  def close_sign_up_form
    @pages.page_home.closeSignUp
  end
  
  def validate_login_form
    @pages.page_home.openLogIn
  end

  def submit_login_form()
    user = Users.sign_in_form_user
    @pages.page_home.enterEmailLogIn(user.email)
    @pages.page_home.enterPasswordLogIn(user.password)
  end

  def click_login_button_login_form
    @pages.page_home.selectLogin
  end

  def validate_negative_login_form
    @pages.page_home.errorLogInMsgVisible
  end
end