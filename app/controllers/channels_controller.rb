class ChannelsController < ApplicationController

  def index
    response = HTTParty.get("https://mezzomorphic-backend/channels.json")
    response_hash = JSON.parse(response.body)
    @channels = response_hash["data"]

    # p response.headers.inspect
    # p response.message
    # p response.code

  end

  def show
    response = HTTParty.get("https://mezzomorphic-backend/channels/#{params[:id]}")
    @channel = JSON.parse(response.body)
    p @channel

    # p response.headers.inspect
    # p response.body
    # p response.code
    # p response.message
  end

  def new
  end

  def edit
    response = HTTParty.get("https://mezzomorphic-backend/channels/#{params[:id]}")
    response_hash = JSON.parse(response.body)
    @channel = response_hash["data"]["attributes"]
    @id = response_hash["data"]["id"]
    # p response.headers.inspect
    # p response.body
    # p response.code
    # p response.message

  end

  def update
  end




end
