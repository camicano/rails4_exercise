# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
CrudApp::Application.config.secret_key_base = 'bc36eaf23954126600b95badb0063125ee2b913d358de62856b5639af6a37e18abc7119772f4ad4eb640fb2b3a2fb2fec3b08f4e89b50e3e4e08657da832a26b'
