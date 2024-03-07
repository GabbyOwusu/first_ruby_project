# frozen_string_literal: true

EMAIL = 'test@example.com'
PASSWORD = 'password'
PASSWORD_VAULT = {
  aws: { username: 'Gabriel', password: 'password' },
  heroku: { username: 'Kofi', password: 'owusu' }
}

# Handle selecting existing service
def select_existing_service
  print 'Which account do you want to retrieve: '
  requested_name = gets.chomp

  obtained_credentials = PASSWORD_VAULT[requested_name.to_sym]
  puts "Here is your #{requested_name} details"

  obtained_credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
end

def user_input
  gets.chomp
end

# Handle creating new service
def create_new_service
  print 'Enter the name of the service: '
  new_service = user_input.to_sym
  PASSWORD_VAULT[new_service] = {}

  print "Please enter the uername of this #{new_service}: "
  new_service_username = user_input
  PASSWORD_VAULT[new_service][:username] = new_service_username

  print "Please enter the password of #{new_service}: "
  new_service_password = user_input
  PASSWORD_VAULT[new_service][:password] = new_service_password

  p PASSWORD_VAULT
end

def promp_selection(email)
  puts "Hello #{email} what would you like to do?"
  puts '1. Add new service credentials'
  puts '2. Retrieve an existing credential'
  puts '3. Exit'
  print 'Enter your selection: '
end

def welcom_greeting
  puts 'Welcome to Password Manager'
  puts 'Please sign in to continue'
end

# Handle user selection
def handle_user_selection(selection)
  case selection
  when '1'
    create_new_service
  when '2'
    select_existing_service
  else
    puts 'Exiting program.... Goodbye'
    exit
  end
end

def validate_email(email)
  return unless email.strip != EMAIL

  print 'Email is invalid'
  exit
end

def validate_password(password)
  return unless password.strip != PASSWORD

  print 'Password is invalid'
  exit
end

def init_program
  welcom_greeting

  print 'Enter email: '
  user_email = user_input
  validate_email(user_email)

  print 'Enter password: '
  user_password = user_input
  validate_password(user_password)

  promp_selection(user_email)
  user_selection = user_input
  handle_user_selection(user_selection)
end

init_program
