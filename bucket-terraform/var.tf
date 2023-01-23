variable "bucket-name" {
    description = "bucket name"
    type = string
    default = "gitops-aws-buc"
  
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
