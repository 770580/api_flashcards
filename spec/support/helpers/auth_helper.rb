def http_login
  user = 'foo'
  pw = 'bar'
  request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user, pw)
end
