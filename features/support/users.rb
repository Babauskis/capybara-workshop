require 'date'
module Users
    def Users.signup_user
        @signup_user ||= User.new(email: 'test@test.com', password: 'passworddemo')
        @signup_user
    end

    def Users.login_user
        @login_user ||= User.new(email: 'auto_apimation@mailinator.com', password: 'Parole12')
        @login_user
    end

    def Users.login_user_negative
        @login_user_negative ||= User.new(email: 'aaaa@aaaamailinator.com', password: 'aaa')
        @login_user_negative
    end
end

class User
    attr_reader :email, :password, :project_name
    def initialize(email:, password:)
        @email = email
        @password = password
        @project_name = 'UIAuto' + DateTime.now.strftime('%Q')
    end

end