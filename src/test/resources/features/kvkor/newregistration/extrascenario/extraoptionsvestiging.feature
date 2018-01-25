@NewRegistrationExtraOptionsLocatie
Feature: Add and remove extra location scenario - OR frontoffice

  Background: Feature: Extra scenario's OR frontoffice - new registration

    Given the user opens the OR frontoffice application
    When the user is logged in and starts with a new registration with legal form "Besloten Vennootschap"
    And within "Besloten Vennootschap" the user enters the unique "Naam_rechtspersoon" with "B.V."
    And within "Besloten Vennootschap" the user enters the "Zetel" with "Woerden"
    And within "Besloten Vennootschap" the user enters the "Datum_akte_van_oprichting" with "01-01-2018"
    And within "Besloten Vennootschap" the user enters the "Datum_ingang" with "01-01-2018"
    Then click on the Volgende button
    And within "Kapitaalgegevens" the user enters the "Geplaatst_kapitaal" with "2000"
    And within "Kapitaalgegevens" the user enters the "Gestort_kapitaal" with "1000"
    Then click on the Volgende button
    Then click on the Volgende button

  Scenario: Add extra location with legal type BV
    Then click Add extra group button

  Scenario: Delete extra added location with legal type BV
    Then click Add extra group button
    And click on the Delete button

  Scenario: Clear visit address from location with legal type BV
    And within "Vestiging(en)" the user enters the "Postcode" with "1061TL"
    And within "Vestiging(en)" the user enters the Huisnummer with "17"
    Then click on the clear button

  Scenario: Add extra trade name, telephone number, fax number and delete them afterwards
    Then click add extra trade name button
    And click on the Delete button
    Then click add extra telephone number button
    And click on the Delete button
    Then click add extra fax number button
    And click on the Delete button