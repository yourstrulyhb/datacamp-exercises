# Define a SocialMedia class that is a child of the `Document class`
class SocialMedia(Document):
    def __init__(self, text):
        Document.__init__(self, text)


# Document is the parent class
# Import parent class formats: from .parent_class import ParentClass