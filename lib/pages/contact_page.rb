class ContactPage
  include PageObject

  page_url 'http://ec2-54-191-181-182.us-west-2.compute.amazonaws.com/contacts'

  link(:new_contact, href: '/contacts/new')

end