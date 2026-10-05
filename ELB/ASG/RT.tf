resource "aws_route_table" "my_rt" {
    tags = {
        Name = "Terraform-RT"
    }

    vpc_id = aws_vpc.my_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_igw.id

    }
}


resource "aws_route_table_association" "subnet_1_association" {
    subnet_id = aws_subnet.subnet_1.id
    route_table_id = aws_route_table.my_rt.id

}

resource "aws_route_table_association" "subnet_2_association" {
    subnet_id = aws_subnet.subnet_2.id
    route_table_id = aws_route_table.my_rt.id   
}