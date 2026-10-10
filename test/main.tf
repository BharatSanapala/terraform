resource "aws_security_group" "my_sg" {
    tags = {
        Name = "my_sg"
    }

    ingress  {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description =  "This port gives access from port 80 to port 80"
    }

    egress  {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
}   