resource "aws_instance" "controlplane" {
  count                  = 3
  ami                    = "ami-067d1e60475437da2"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.cka-subnet.id
  vpc_security_group_ids = [aws_security_group.cka-sg.id]
  key_name               = "/home/cloudshell-user/cka-study-group.pem"
  tags = {
    Name = "controlplane-${count.index}"
  }
}

resource "aws_instance" "worker_node1" {
  ami                    = "ami-067d1e60475437da2"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.cka-subnet.id
  vpc_security_group_ids = [aws_security_group.cka-sg.id]
  key_name               = "/home/cloudshell-user/cka-study-group.pem"
  tags = {
    Name = "worker-node1"
  }
}

resource "aws_instance" "haproxy_node" {
  ami                    = "ami-067d1e60475437da2"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.cka-subnet.id
  vpc_security_group_ids = [aws_security_group.cka-sg.id]
  key_name               = "/home/cloudshell-user/cka-study-group.pem"
  tags = {
    Name = "haproxy-node"
  }
}
