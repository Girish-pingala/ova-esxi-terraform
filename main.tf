terraform {
  required_version = ">= 0.12"
}
provider "esxi" {
  esxi_hostname      = var.esxi_credentials.host
  esxi_hostport      = var.esxi_credentials.ssh_port
  esxi_hostssl       = var.esxi_credentials.ssl_port
  esxi_username      = var.esxi_credentials.username
  esxi_password      = var.esxi_credentials.password
}
resource "esxi_guest" "TESTSDK-ovaesx" {
  guest_name         = "TESTSDK-ovaesx"
  disk_store         = "datastore1"
  #
  #  Specify an existing guest to clone, an ovf source, or neither to build a bare-metal guest vm.
  #
  #clone_from_vm      = "Templates/centos7"
  #ovf_source        = "/local_path/centos-7.vmx"
  ovf_source         = "D:/SDK_SC.ova"
  network_interfaces {
    virtual_network = "VMs"
  }
}