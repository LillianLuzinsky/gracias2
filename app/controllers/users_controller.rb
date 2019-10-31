class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create

    puts "=============================="
    puts params.inspect
    puts "=============================="

    form_params = params.require(:user)
      .permit(:name, :email, :password, :password_confirmation)

    @user = User.new(form_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      flash.now.alert = "sorry, wrong email or password"
      render "new"
    end
  end
end