When(/^I am on Appimation home page/) do
  visit('/')
  #find(:css, '#start_button')
  #find(:xpath, "//button[@id='start_button']")
  #find(css, "#video")
  #find(:css, ".feature-image")
  #find(:xpath, "//img[@class = 'feature-image']"
  
  #Try Now button
  find(:xpath, "//button[@id = 'start_button']")
  find(:css, '#start_button')

  #Sign Up button
  find(:xpath, "//button[@id = 'signup-b']")
  find(:css, '#signup-b')

  #Contact Us Section
  find(:xpath, "//section[@id = 'cta']")
  find(:css, '#cta')

  #Contact Us name input
  find(:xpath, "//input[@id = 'name']")
  find(:css, '#name')

  #Contact Us email input
  find(:xpath, "//input[@id = 'email']")
  find(:css, '#email')

  #Contact Us message input
  find(:xpath, "//textarea[@id = 'contactus-message']")
  find(:css, '#contactus-message')

  #Contact Us send button
  find(:xpath, "//input[@id = 'contactus-button']")
  find(:css, '#contactus-button')

  #FaceBook logo at the bottom of page
  find(:xpath, "//a[@class = 'icon fa-facebook']")
  find(:css, '.fa-facebook')

  #All Feature sections in list
  all(:xpath, "//section[@class = 'box special features']")
  all(:css, "section[id = main] > section[class = 'box special features']")
  
  #Chain Requests with reusable data image
  find(:xpath, "//div[@class = 'features-row']//h3[contains(text(),'Chain requests')]/preceding-sibling::img")
  find(:css, "div[class = 'features-row']:first-child > section:first-child > img")

end