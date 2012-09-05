require 'fitbit_client_wrapper'

class Oauth::FitbitController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def start
    client = Fitgem::Client.new({:consumer_key => APP_CONFIG[:fitbit_consumer_key], :consumer_secret => APP_CONFIG[:fitbit_consumer_secret]})
    request_token = client.request_token
    current_user.fitbitaccount.set_request_token!(request_token.token, request_token.secret)
    token = current_user.fitbitaccount.request_token

    redirect_to "http://www.fitbit.com/oauth/authorize?oauth_token=#{token}"
  end

  def verify
    if params[:oauth_token] && params[:oauth_verifier]
      @client = Fitgem::Client.new({:consumer_key => APP_CONFIG[:fitbit_consumer_key], :consumer_secret => APP_CONFIG[:fitbit_consumer_secret], :user_id => '-'})
      fitbitaccount = current_user.fitbitaccount
      token = params[:oauth_token]
      secret = fitbitaccount.request_secret
      verifier = params[:oauth_verifier]
      begin
        access_token = @client.authorize(token, secret, { :oauth_verifier => verifier })
      rescue
        flash[:alert] = "Oops, there wasn't a valid OAuth session on Fitbit. Try to authorize again."
        redirect_to fitbit_connect_path and return
      end
      fitbitaccount.verify!(access_token.token, access_token.secret, verifier)
      flash[:notice] = "Congratulations! Your Fitbit account is now connected to your WMX account"
      redirect_to root_path
    else
      flash[:alert] = 'Could not verify your account with Fitbit'
      redirect_to root_url
    end
  end

  def unlink
  end

  def disconnect
    current_user.fitbit_account.clear!
    flash[:notice] = "Your Fitbitclient.com account has been unlinked from your Fitbit account"
    redirect_to user_profile_path
  end

end