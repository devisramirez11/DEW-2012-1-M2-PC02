class Tweet < ActiveRecord::Base

Twitter.configure do |config|
      config.consumer_key = 'XYO3kpkxEkZiumqIv7qg'
      config.consumer_secret = 'qcaUMBMLiKFBfbDCIq2kOJXRXZXIBGzU00oyh5ECk'
      config.oauth_token = '747279979-k1LI0QdEZHxMWGBnf2qgdZ2aU3ynzBJcUvnLsg'
      config.oauth_token_secret = 'iVdOUQSbND41cQciKpqLPVSklcktiLA8FwjUBAZuunI'
end    

  def read_text
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).text
  end

  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end
  
  def update_status
	/return "sin update" if self.message.blank?/
	Twitter.update(self.message)
  end
   
end
