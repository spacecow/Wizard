# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wizard2_session',
  :secret      => 'df930be844efb37046c07a35fcb1f4faef79dc28ef5bb7c049b28fc1c4d1e26fe86c79a6c63ab2b0495614fc8775e6bca751888ba7ea6d7f73e86d34c8cbe55c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
