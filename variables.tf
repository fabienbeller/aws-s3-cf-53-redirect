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

variable "sources" {
  description = "Redirect source domains."
  type        = list(string)
  default     = null
}

variable "redirect_host" {
  description = "Host to redirect to."
  type        = string
}

variable "redirect_prefix" {
  description = "Prefix to redirect to. Eg: page/docs/"
  type        = string
}