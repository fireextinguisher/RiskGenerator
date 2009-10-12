# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_RiskGenerator_session',
  :secret      => 'c6ecdb49d91bd4e7d1d065b081fab84347df5720cc43be78639a037ba6ce913fe74f44f97f03d7d7bda19ad8017d13bc9e3ec04472a1641641ecda0800207c75'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
