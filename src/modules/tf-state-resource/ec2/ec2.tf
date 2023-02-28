resource "aws_instance" "Jenkins_Server" {
  ami                         = "ami-0dfcb1ef8550277af"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.medium"
  ipv6_address_count                   = "0"
  key_name                             = "diyaweb"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.27.190"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  security_groups   = ["default"]
  source_dest_check = "true"
  subnet_id         = "subnet-089398f9f5b6c2c20"

  tags = {
    Name = "Jenkins_Server"
  }

  tags_all = {
    Name = "Jenkins_Server"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-05db0dd4d35485b18"]
}