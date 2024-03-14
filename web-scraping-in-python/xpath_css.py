"""
Instruction:
- Assign to the variable xpath an XPath string directing to the text within the paragraph p element with id equal to p3, which does not include the text of future generations of this p element.
    
- Assign to the variable css_locator a CSS Locator string directing to this same text.

"""

# Create an XPath string to the desired text.
xpath = '//p[@id="p3"]/text()'

# Create a CSS Locator string to the desired text.
css_locator = 'p#p3::text'

# Print the text from our selections
print_results( xpath, css_locator )


""" 
- Assign to the variable xpath an XPath string directing to the text within the paragraph p element with id equal to p3, which includes the text of future generations of this p element.
- Assign to the variable css_locator a CSS Locator string directing to this same text.

"""

# Create an XPath string to the desired text.
xpath = '//p[@id="p3"]//text()'

# Create a CSS Locator string to the desired text.
css_locator = 'p#p3 ::text'

# Print the text from our selections
print_results( xpath, css_locator )

