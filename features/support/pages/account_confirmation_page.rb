class AccountConfirmationPage
  include PageObject

  def has_account_confirmation?
    text.include? 'account was created successfully'
  end

  def has_account_creation_error?
    text.downcase.include? 'invalid email'
  end

end