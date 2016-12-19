class ChannelsController < ApplicationController
  
  def index
    @channel = {name:"Blip", description:"our baby", inputs:"blip.wav"}
    @channels = [@channel]
  end
  
  def show
    @channel = {name:"Blip", description:"our baby", inputs:"blip.wav"}

  end
  
  def new
  end
  
  def edit
    @channel = {name:"Blip", description:"our baby", inputs:"blip.wav"}
  end




end