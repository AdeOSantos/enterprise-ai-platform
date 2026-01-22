"""OpenAI LLM adapter."""

class OpenAIAdapter:
    """Adapter for OpenAI API."""
    
    def __init__(self, api_key):
        self.api_key = api_key
    
    def generate(self, prompt, model="gpt-4"):
        """Generate text from prompt."""
        pass
