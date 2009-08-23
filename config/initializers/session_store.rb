# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_askken_session',
  :secret      => 'e73e9bde65fe41d1421704deb7e669015584f4b021c323f437f91820b6b8813213be45d2738e3731252e916f5384f5cee408e71c3a57f87c7bd7b6685e7878d2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
