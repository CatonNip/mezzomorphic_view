class ChannelsController < ApplicationController
  
  def index
    @channel = {name:"Blip", description:"our baby", inputs:"blip.wav"}
    @channels = [@channel]
  end
  
  def show
    response = HTTParty.get("http://localhost:3000/channels/#{params[:id]}")
    @channels = JSON.parse(response.body)

  end
  
  def new
  end
  
  def edit
    @channel = {name:"Blip", description:"our baby", inputs:"blip.wav"}
  end




end