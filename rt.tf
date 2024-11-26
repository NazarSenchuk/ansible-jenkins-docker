resource "aws_route_table" "to_ig" {
  vpc_id = aws_vpc.vpc_practice.id

  
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }
  route{
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id

  }
  tags = {
      Name = "Route Table to Internat"
    }

}
resource "aws_route_table_association" "association_1" {
  subnet_id      = aws_subnet.subnet_public_1.id
  route_table_id = aws_route_table.to_ig.id
}
resource "aws_route_table_association" "association_2" {
  subnet_id      = aws_subnet.subnet_public_2.id
  route_table_id = aws_route_table.to_ig.id
}