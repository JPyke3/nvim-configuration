local llm = require('llm')

llm.setup({
  model = "codellama:7b", -- the model ID, behavior depends on backend
  backend = "ollama", -- backend ID, "huggingface" | "ollama" | "openai" | "tgi"
  url = "http://localhost:11434",
  enable_suggestions_on_startup = true,
  enable_suggestions_on_files = "*",
  request_body = {
    -- Modelfile options for the model you use
    options = {
      temperature = 0.2,
      top_p = 0.95,
    }
  }
})

