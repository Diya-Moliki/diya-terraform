

# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16" # Change this to your desired CIDR block
}

# # Create an Internet Gateway
# resource "aws_internet_gateway" "my_igw" {
#   vpc_id = aws_vpc.my_vpc.id
# }

# # Create a public subnet
# resource "aws_subnet" "my_public_subnet" {
#   vpc_id            = aws_vpc.my_vpc.id
#   cidr_block        = "10.0.1.0/24" # Change this to your desired CIDR block
#   availability_zone = "us-east-1a" # Change this to your desired availability zone
# }

# # Create a private subnet
# resource "aws_subnet" "my_private_subnet" {
#   vpc_id            = aws_vpc.my_vpc.id
#   cidr_block        = "10.0.2.0/24" # Change this to your desired CIDR block
#   availability_zone = "us-east-1a" # Change this to your desired availability zone
# }

# # Create a route table for the public subnet
# resource "aws_route_table" "my_public_route_table" {
#   vpc_id = aws_vpc.my_vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.my_igw.id
#   }
# }

# # Associate the public subnet with the public route table
# resource "aws_route_table_association" "my_public_subnet_association" {
#   subnet_id      = aws_subnet.my_public_subnet.id
#   route_table_id = aws_route_table.my_public_route_table.id
# }
