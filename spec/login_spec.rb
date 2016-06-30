describe 'Logging in' do
  context 'with successful login' do
    before(:all) do
      logoutEasy
    end
    after(:all) do
      logoutEasy
      # loginEasy
    end
    it 'is logged in' do
      @email = 'kelly@test.com'
      @password = 'test123'
      visit SigninPage do |signin_page|
        signin_page.login(email: @email, password: @password)
      end
      on HomePage do |home_page|
        expect(home_page.content_div)
          .to include("Currently sign in as #{@email}")
      end
    end
  end
end
