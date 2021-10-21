class HomeController < ApplicationController
  before_action :get_matchs, only: [:index]
  before_action :get_notices, only: [:index]

  def index
  end

  private

  def get_matchs
    begin
      api_football_url = Rails.application.credentials[Rails.env.to_sym][:api_football_url]
      api_football_token = Rails.application.credentials[Rails.env.to_sym][:api_football_token]
      week_ago = (Time.now - 7.days).strftime("%y-%m-%d")
      week_ahead = (Time.now + 7.days).strftime("%y-%m-%d")
      url = "#{api_football_url}?action=get_events&APIkey=#{api_football_token}&timezone=America/Sao_Paulo&from=#{week_ago}&to=#{week_ahead}&team_id=4292"
      res = RestClient.get(url)
      @matchs = JSON.parse(res.body)
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end

  def get_notices
    notices = Notice.all
    range = notices.length - 3
    @notices_show = notices[range..notices.length].reverse
  end
end
