module "node" {
  source = "../../modules/node"
  kvm_template  = "/vm/service-island/templates/centos7-template1545616212.qcow2"
  domain_name   = "www"
  memory        = "512"
  cpu           = "1"
  network       = "Service-Island"
}