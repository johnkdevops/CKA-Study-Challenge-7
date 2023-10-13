resource "aws_vpc" "cka-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "cka-vpc"
  }
}

resource "aws_subnet" "cka-subnet" {
  vpc_id     = aws_vpc.cka-vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "cka-subnet"
  }
}

resource "aws_internet_gateway" "cka-igw" {
  vpc_id = aws_vpc.ck-vpc.id

  tags = {
    Name = "cka-igw"
  }
}

resource "aws_route_table" "cka-rt" {
  vpc_id = aws_vpc.cka-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cka-igw.id
  }

  tags = {
    Name = "cka-rt"
  }
}

resource "aws_route_table_association" "cka-rta" {
  subnet_id      = aws_subnet.cka-subnet.id
  route_table_id = aws_route_table.cka-rt.id
}
