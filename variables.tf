
variable "aws_region" {
  type    = string
  default = "us-east-1"
}


variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
  default     = "demo_vpc"
}

variable "public_subnets" {
  description = "Map of public subnets with index as value"
  type        = map(number)
  default = {
    public_subnet_1 = 0
    public_subnet_2 = 1
    public_subnet_3 = 2
  }
}

variable "private_subnets" {
  description = "Map of private subnets with index as value"
  type        = map(number)
  default = {
    private_subnet_1 = 0
    private_subnet_2 = 1
    private_subnet_3 = 2
  }
}
