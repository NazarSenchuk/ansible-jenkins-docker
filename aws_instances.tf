resource "aws_instance" "jenkins" {
    ami = "ami-0866a3c8686eaeeba"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.subnet_public_1.id
    security_groups= [ aws_security_group.allow_http_ssh.id]
    key_name ="linux"
}
