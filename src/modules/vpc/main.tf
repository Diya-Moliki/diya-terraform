resource "aws_vpc" "fault_tolerant_vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "fault_tolerant_vpc"
  }
}
resource "aws_subnet" "subnet_a" {
  vpc_id = aws_vpc.fault_tolerant_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "fault_tolerant_subnet_a"
  }
}

resource "aws_subnet" "subnet_b" {
  vpc_id = aws_vpc.fault_tolerant_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "fault_tolerant_subnet_b"
  }
}

resource "aws_internet_gateway" "fault_tolerant_igw" {
  vpc_id = aws_vpc.fault_tolerant_vpc.id
  tags = {
    Name = "fault_tolerant_igw"
  }
}

resource "aws_route_table" "subnet_a_rt" {
  vpc_id = aws_vpc.fault_tolerant_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.fault_tolerant_igw.id
  }
  tags = {
    Name = "fault_tolerant_subnet_a_rt"
  }
}

resource "aws_route_table_association" "subnet_a_rta" {
  subnet_id = aws_subnet.subnet_a.id
  route_table_id = aws_route_table.subnet_a_rt.id
}

resource "aws_route_table" "subnet_b_rt" {
  vpc_id = aws_vpc.fault_tolerant_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.fault_tolerant_igw.id
  }
  tags = {
    Name = "fault_tolerant_subnet_b_rt"
  }
}

resource "aws_route_table_association" "subnet_b_rta" {
  subnet_id = aws_subnet.subnet_b.id
  route_table_id = aws_route_table.subnet_b_rt.id
}

