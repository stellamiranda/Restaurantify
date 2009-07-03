# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restaurantify_session',
  :secret      => '88ac187c506c0249f6f2f398368409b772d6b1cdaff5f016039646a27808a175e8895af6aba88f8f7fc4f59c9fa8a7042e6eff52418b09054f1f25dda5c33c0b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
