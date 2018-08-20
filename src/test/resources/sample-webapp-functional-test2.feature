@SPRINT100
Feature: Item2 - Validate the web site pages
Navigate to the Test page.
Enter the values in two text boxes. 
Hit concatenate button to populate the result in the third textbox.
Validate the result populated is as expected.

  Scenario Outline: Test2 - Concatenate two strings in the Test page
    Given I am using app url within <browsertarget> browser to navigate to the Test page
    And I have entered <firststring> into the first text box
    And Then I have entered <secondstring> into the second text box
    When I press concatenate button
    Then the result should be <resultstring> on the third text box
    
  @SMOKE1
    Examples: 
      | targetbrowser | firststring | secondstring | resultstring |
      | ie            | uvw1        | xyz1         | uvw1xyz1     | 
  
  @SMOKE
    Examples: 
      | targetbrowser | firststring | secondstring | resultstring | 
      | ie            | uvw1        | xyz1         | uvw1xyz1     | 
      | chrome        | uvw1        | xyz1         | uvw1xyz1     | 
  
  @FUNCTIONAL
    Examples: 
      | targetbrowser | firststring | secondstring | resultstring | 
      | ie            | uvw2        | xyz2         | uvw2xyz2     | 
      | chrome        | uvw2        | xyz2         | uvw2xyz2     | 
      | ie            | uvw3        | xyz3         | uvw3xyz3     | 
      | chrome        | uvw3        | xyz3         | uvw3xyz3     | 

      
      
   

   
