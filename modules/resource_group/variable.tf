variable "rg" {
  type = map(object({
    name     = string
    location = string

    tags = optional(object({
      managed_by = string
      tag_number = number
    }))
  }))
}