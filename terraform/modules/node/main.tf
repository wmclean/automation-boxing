

# qcow2 image from file
resource "libvirt_volume" "volume" {
  name   = "${var.domain_name}_volume.img"
  source = "${var.kvm_template}"
}

# domain using qcow2 volume
resource "libvirt_domain" "domain" {
  name   = "${var.domain_name}"
  memory = "${var.memory}"
  //this may need to be a int instead of a sting
  vcpu   = "${var.cpu}"

  network_interface {
    network_name = "${var.network}"
  }

  disk {
    volume_id = "${libvirt_volume.volume.id}"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}
