resource "aws_instance" "control_plane" {
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

  vpc_security_group_ids = [aws_security_group.cp_sg.id]
}

resource "aws_security_group" "cp_sg" {
  name        = "cp_sg"
  description = "Control Plane inbound traffic"
  # vpc_id      = aws_vpc.main.id

  ingress {
    description      = "All TCP from Anywhere"
    from_port        = 0
    to_port          = 65535
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "cp_sg"
  }
}

