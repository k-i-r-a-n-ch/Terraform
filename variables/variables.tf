variable "ami_id" {

    type    = string 
    default = "ami-0b4f379183e5706b9"
    description = "This is AMI ID of devops-practice which is   rhel-9"

}

variable "instance_type" {

    type  = string 
    default  = "t3.micro"

}


variable "tags" {

    type = map 
    default = {

        Name = "terraform"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true" 

    }

}

variable "sg_name" {

    type = string
    default = "allow_ssh"

}

variable "sg_description" {

    default = "Allow port number 22 for SSH Access"

}

variable "from_port" {

    default = 22 
    type = number 

}

variable "to_port" {

    default = 22 
    type = number 

}

variable "protocol" {

    type  = string 
    default = "tcp"

}

variable "ingress_cidr" {

    type = list(string)
    default = ["0.0.0.0/0"]

}