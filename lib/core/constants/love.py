from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time

driver = webdriver.Chrome()
driver.get("https://www.facebook.com/messages")

input("Login manually, open the chat, then press Enter here...")

# Number of messages you want to send
num_messages = 10

for i in range(1, num_messages + 1):
    box = driver.find_element(By.XPATH, '//div[@role="textbox"]')
    box.send_keys(f"{i}. I love you bby ❤️")
    box.send_keys(Keys.ENTER)
    time.sleep(2)  # wait 2 seconds between messages

driver.quit()
