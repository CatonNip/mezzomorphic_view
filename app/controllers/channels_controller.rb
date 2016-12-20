class ChannelsController < ApplicationController
  
  def index
    response = HTTParty.get("http://localhost:3000/channels.json")
    response_hash = JSON.parse(response.body)
    @channels = response_hash["data"]
     p @channels
    # p response.headers.inspect
    # p response.message
    # p response.code

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