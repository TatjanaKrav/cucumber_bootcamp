@Test
Feature: Sign in, sign up and sign out

Background:
    Given Im on address book home page

  Scenario: Sign in, sign up and sign out
    When I click sign in
    And I click sign up
    And Add email 'fxc@gmail.com' and password '147852'
    And Click sign up
    Then Click sign out

 @Test2
 Scenario Outline:  Create addresses
    When I click on sign in
    And Add email 'fxc@gmail.com' and password '147852'
    And I click sign in
    And I click Addresses
    And I click new Address
    And I create new address with {string}, {string}, {string}, {string}, {string}
   Examples:
     | First name | Last name | Address1  | City     | Zip     |
     |Maks        |Maksimov   |Brivabas 1 |Wisconsin |WI3256655|
     |Mariana     |Marianovna |Brivibas 2 |California|CA2545   |
     |Aron        |Aronov     |Brivibas 3 | New York |NY255545 |

  Scenario:
    Given Im signed in with remembered credentials
    When I click Addresses button
    And I remember and delete address 1
    Then Remembered address is missing from the list



#  open http://a.testaddressbook.com/
#  click sing in
#  add data from previous test
#  click 'Addresses'
#click new Address
#  populate form
#  click Create Address
#  verify address added
#  click List
#  verify address on page
#       REPEAT 3 TINES


#  open site
#  sing in
#  destroy one address
#  verify address removed from page


  DONE
#  open http://a.testaddressbook.com/
#  click sing in
#  click sing up
#  populate it and remember this
#  sing out