module AwetestDslAllDefaults
  def run
    browser = open_browser
    browser.goto("www.google.com")
    sleep(2)
    set_textfield_by_name(browser, 'q', '3QILabs')
    click_button_by_name(browser, 'btnG')
    sleep(2)
    for i in 1..1000
        validate_text(browser, '3Qi Labs')
    end
    browser.close
  end
end