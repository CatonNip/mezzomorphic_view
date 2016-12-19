class UsersController < ApplicationController
  
  
  def show
    @channel = {name:"Blip", description:"our baby", inputs:"blip.wav"}
    @user = {name: "AlextheMaxel", email: "alex@vivi", password: "password", channels: [@channel]}

  end
  
  def new

  end
  
  def edit
    @user = {name: "AlextheMaxel", email: "alex@vivi", password: "password"}

  end




end