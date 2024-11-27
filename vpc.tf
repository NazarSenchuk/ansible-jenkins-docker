provider "aws" {
  region     = "us-east-1"

}
resource "aws_vpc" "vpc_practice" {

  cidr_block = "10.0.0.0/16"
  tags = {
      Name = "vpc-practice"
    }

}
resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = aws_vpc.vpc_practice.id

    tags = {
      Name = "internat"
    }


}
