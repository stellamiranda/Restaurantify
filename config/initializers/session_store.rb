# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restaurantify_session',
  :secret      => '103b9a7c800f6052b264c1d9665b27ea6c40c6e30c5d9fca55793e2c0717d300869378d55982264492b0f2a0d352237c5f21cf40b9bfeb56456b47ae25c89012'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
