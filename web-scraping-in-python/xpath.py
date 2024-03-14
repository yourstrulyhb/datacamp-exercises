xpath = '/html/body/div[2]/p'       # Get p element of 2nd div elemenet of body

xpath2 = '//div[@id="uid"]'         # Get content of div element with id=uid
                                    # @id="uid" read as "attribute id equals uid"

xpath = "//span[@class='span-class']"


# Create an XPath string to direct to children of body element
xpath = "/html/body/*"

# Print out the number of elements selected
how_many_elements( xpath )