*** Variables ***

#common properties
${browser}                  Chrome
${win_chrome_driver_exe}    ${OUTPUTDIR}/WebDrivers/chromedriver.exe
${win_firefox_driver_exe}   ${OUTPUTDIR}/WebDrivers/geckodriver.exe
${mac_chrome_driver_exe}    ${OUTPUTDIR}/WebDrivers/chromedriver
${mac_firefox_driver_exe}   ${OUTPUTDIR}/WebDrivers/geckodriver
${timeout}                  15s
${set_selenium_speed}       0.5s


#Irdeto Homepage
${about_us}                 //ul[@id='menu-homepage']/li[8]/a[1]
${careers}                  //ul[@id='menu-homepage']/li[10]/a[1]
${irdeto_url}               https://irdeto.com/
${cookie_name}              notice_gdpr_prefs
${cookie_val}               0,1:

#Google Search
${search_text_box}          name:q
${search_term}              irdeto
${search_result}            irdeto.com
${first_search_result}      xpath:(//div[@class='TbwUpd']//cite)[1]
${google_url}               https://www.google.com/