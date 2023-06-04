variable "vpc_id" {
  type = string
}

variable "public_key" {
  type = string
}

variable "server_name" {
  type    = string
  default = "Apache Example Server"
}

variable "ami_id" {
  type = string
}