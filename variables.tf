variable "esxi_credentials" {
  type = object({
    username             = string
    password             = string
    host                 = string
    ssh_port             = number
    ssl_port             = number
  })
  description = "Esxi connection details"
}
