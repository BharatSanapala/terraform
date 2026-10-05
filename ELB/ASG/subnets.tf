resource "aws_subnet" "subnet_1" {
    vpc_id = aws_vpc.my_vpc.id

    tags = {
        Name = "public_subnet-1"
    }

    cidr_blocks = "10.0.0.0/24"
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = "true"
}

resource "aws_subnet" "subnet_2" {
    vpc_id = aws_vpc.my_vpc.id

    tags = {
        Name = "public_subnet-2"
    }

    cidr_blocks = "10.0.1.0/24"
    availability_zone = "ap-south-1b"
    map_public_ip_on_launch = "true"
}