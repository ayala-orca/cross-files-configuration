resource "aws_instance" "shouldfail" {
  ami = "ami-003634241a8fcdec0"

  instance_type = "t2.micro"

  subnet_id   = aws_subnet.my_subnet.id

}

resource "aws_subnet" "shouldfail" {
  vpc_id     = aws_vpc.default.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
