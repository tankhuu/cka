variable "ami_id" {
  type        = string
  description = "AMI ID for cluster nodes"
  default     = "ami-051dba585c12c8e8b"
}

variable "keypair_name" {
  type        = string
  description = "EC2 Instance KeyPair"
  default     = "cka"
}

variable "control_plane_count" {
  type        = number
  description = "How many control plane that you want to launch?"
  default     = 1
}

variable "cp_instance_type" {
  type        = string
  description = "Control Plane Instance Type"
  default     = "t4g.small"
}

variable "worker_count" {
  type        = number
  description = "How many workers that you want to launch?"
  default     = 2
}

variable "worker_instance_type" {
  type        = string
  description = "Worker Instance Type"
  default     = "t4g.small"
}
