require 'date'
module Users

    def  Users.sign_up_form_user
      @sign_up_form_user ||= User.new(args = {password: 'parole123', repassword: 'parole123'})
      @sign_up_form_user
    end

    def  Users.sign_in_form_user
      @sign_in_form_user ||= User.new(args = {})
      @sign_in_form_user
    end

  class User
    attr_reader :email, :password, :repassword, :project_name
    def initialize(args = {})
      defaults = {email: DateTime.now.strftime('%Q')+'@test.com', password: DateTime.now, repassword: DateTime.now, project_name: DateTime.now}
      args = defaults.merge(args)
      @email = args[:email]
      @password = args[:password]
      @repassword = args[:repassword]
      @project_name = args [:project_name]
    end
  end
end