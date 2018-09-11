#!/usr/bin/env ruby

require 'google/apis/drive_v2'

class AccessToken
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def apply!(headers)
    headers['Authorization'] = "Bearer #{@token}"
  end
end

Drive = Google::Apis::DriveV2 # Alias the module
drive = Drive::DriveService.new
token = `echo $ACCESS_TOKEN`.gsub("\n","")
access_token = AccessToken.new(token)
drive.authorization = access_token
p drive.list_files
