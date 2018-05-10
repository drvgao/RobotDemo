from selenium.webdriver import Firefox, Remote
import sys

def open():
    driver = Firefox()
    print("%s  %s" % (driver.session_id, driver.command_executor._url))
    
def attach(sid, url):
    driver = Remote(command_executor=url, desired_capabilities={})
    driver.session_id = sid
    driver.find_element_by_xpath("//input[contains(@value, 'Lucky')]").click()

sid = sys.argv[1] if len(sys.argv) > 1 else None
url = sys.argv[2] if len(sys.argv) > 2 else None

if sid is None:
    open()
else:
    attach(sid, url)