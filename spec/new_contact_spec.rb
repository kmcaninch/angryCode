describe 'add new contact' do
  before(:all) do
    # @email = 'kmcaninch@daxko.com'
    # @password = 'test123'
    @first_name = 'Jane'
    @last_name = 'Smith'
    @street = '123 Sesame Street'
    @city = 'Anytown'
    @state = 'Anystate'
    @postal_code = '12345'
    @cell_phone = '(111) 111-1111'
    @home_phone = '(222) 222-2222'
    @fax = '(333) 333-3333'
    @notes = 'This user is awesome!'
    # visit SigninPage do |signin_page|     taken out because of login method in easy.rb
    #   signin_page.login(email: @email, password: @password)
    # end
  end
  context 'with good data' do
    before(:all) do
    visit ContactPage do |contact_page|
      contact_page.new_contact
    end
    on NewContactPage do |new_contact_page|
      new_contact_page.first_name= @first_name
      new_contact_page.last_name= @last_name
      new_contact_page.street= @street
      new_contact_page.city= @city
      new_contact_page.state = @state
      new_contact_page.postal_code = @postal_code
      new_contact_page.cell_phone = @cell_phone
      new_contact_page.home_phone = @home_phone
      new_contact_page.fax = @fax
      new_contact_page.notes = @notes
      new_contact_page.submit
      end
    end
    it 'shows the first name' do
      on ContactDetailPage do |contact_detail_page|
      expect(contact_detail_page.content)
          .to include("First name: #{@first_name}")
      end
    end
    it 'shows the last name' do
      on ContactDetailPage do |contact_detail_page|
      expect(contact_detail_page.content)
          .to include("Last name: #{@last_name}")
      end
    end
    it 'shows the street' do
      on ContactDetailPage do |contact_detail_page|
      expect(contact_detail_page.content)
          .to include("Street: #{@street}")
      end
    end
    it 'shows the city' do
      on ContactDetailPage do |contact_detail_page|
      expect(contact_detail_page.content)
          .to include("City: #{@city}")
      end
    end
    it 'shows the state' do
      on ContactDetailPage do |contact_detail_page|
      expect(contact_detail_page.content)
          .to include("State: #{@state}")
      end
    end
    it 'shows the postal code' do
      on ContactDetailPage do |contact_detail_page|
      expect(contact_detail_page.content)
          .to include("Postal Code: #{@postal_code}")
      end
    end
    it 'shows the cell phone' do
      on ContactDetailPage do |contact_detail_page|
      expect(contact_detail_page.content)
          .to include("Cell phone: #{@cell_phone}")
      end
    end
    it 'shows the home phone' do
      on ContactDetailPage do |contact_detail_page|
      expect(contact_detail_page.content)
          .to include("Home phone: #{@home_phone}")
      end
    end
    it 'shows the fax' do
      on ContactDetailPage do |contact_detail_page|
      expect(contact_detail_page.content)
          .to include("Fax: #{@fax}")
      end
    end
    it 'shows the notes' do
      on ContactDetailPage do |contact_detail_page|
      expect(contact_detail_page.content)
          .to include("Notes: #{@notes}")
      end
    end
    end
    end