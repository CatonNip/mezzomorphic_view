class UsersController < ApplicationController
  
  def show
    @channel = {name:"Blip", description:"our baby", inputs:"blip.wav"}
    @user = {name: "AlextheMaxel", email: "alex@vivi", password: "password", channels: [@channel]}

  end
  
  def new


  end

  def create
    user_input = user_params
    response = HTTParty.post('http://localhost:3000/users',
    {
      :body => {'user' => 
                {'name' => user_input[:name], 'email' => user_input[:email], 'password' => user_input[:password] }}.to_json,
      :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'}
    })

    p 'RESPONSE'
    p response.body
    p response.code
    p response.message
    p response.headers.inspect

    if response.code == 201
      #add user auth with devise.
      response_hash =JSON.parse(response.body)
      redirect_to user_path(response_hash['id'])
    else
      redirect_to '/users/new'  
    end


  end
  
  def edit
    @user = {name: "AlextheMaxel", email: "alex@vivi", password: "password"}

  end

  private 

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end



end