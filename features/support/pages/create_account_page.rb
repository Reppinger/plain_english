class CreateAccountPage
  include PageObject

  page_url("file:///Users/Randy/code/Cucumber/plain_english/app/create_account.html")

  text_field(:email, id: 'email')
  link(:create, text: 'Create')

  def create_account(email_address)
    self.email = email_address
    sleep 1
    create
  end


end