resource "aws_instance" "cp1" {
  count         = var.control_plane_count
  ami           = var.ami_id
  instance_type = var.cp_instance_type
  key_name      = var.keypair_name


  tags = {
    Name = "ControlPlane-${count.index + 1}"
  }

  root_block_device {
    encrypted   = false
    volume_size = 20
    volume_type = "standard"
  }

  security_groups = [aws_security_group.allow_ssh.id]
}

