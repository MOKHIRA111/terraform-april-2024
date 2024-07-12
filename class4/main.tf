provider aws {
    region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

variable ami_id {
    description = "provide ami id"
    type = string 
    default = ""
}
  
variable instance_type {
    description = "provide instance type"
    type = string 
    default = ""
}

variable  region {
   description = "provide a region"
type = string
default = ""
}


#ami-08be1e3e6c338b037