# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restaurant_review_session',
  :secret      => 'df34c0df8a46bbe72500300ac52efb408cc3223ee42ec19ef6d447e75ea1662a9cf98803452f18acdb2b75b32bf5426a145ea901d1a08d445291039f012a1bb8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
