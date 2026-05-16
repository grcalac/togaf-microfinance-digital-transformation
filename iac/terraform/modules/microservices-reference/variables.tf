variable "name" {
  description = "Synthetic public reference name."
  type        = string
}

variable "services" {
  description = "Conceptual services from the article. No source code or business logic is represented."
  type = map(object({
    domain = string
    ica    = number
  }))
}
