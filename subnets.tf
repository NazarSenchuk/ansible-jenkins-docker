resource "aws_subnet" "subnet_public_1"{
	availability_zone = "us-east-1a"
	vpc_id     = aws_vpc.vpc_practice.id
	cidr_block = "10.0.1.0/24"
	map_public_ip_on_launch = true
	tags = {
	    Name = "public_1"
	  }




}
resource "aws_subnet" "subnet_public_2"{
	availability_zone = "us-east-1a"
	vpc_id     = aws_vpc.vpc_practice.id
	cidr_block = "10.0.2.0/24"
	map_public_ip_on_launch = true
	tags = {
	    Name = "public_2"
	  }




}