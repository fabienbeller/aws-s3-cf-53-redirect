variable "domain_name" {
    description = "The name of the site"
    type        = string
}

variable "tags" {
  type        = map(string)
  description = "Additional tags"
  default     = {}
}

variable "name" {
  description = "The name of the site to redirect."
  type        = string
}

variable "bucket_name" {
    description = "The name of the bucket."
    type        = string
}

variable "redirect" {
    description = "Map containing redirect config."
    type        = map(string)	
}

variable "sources" {
  description = "Redirect source domains."
  type        = list(string)
  default     = null
}