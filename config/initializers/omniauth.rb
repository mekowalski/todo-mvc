use OmniAuth::Builder do
  provider :github, 'c402066ea55354cf9dca', '8c8e4e96a67b55747aff6b215b192f57ed21798a'
end

# client key and secret shouldn't be stored like this, it's bad practice
# usually store in ENV hash

# anything in this file and initializers directory will be read once when application starts
# configure with different settings
