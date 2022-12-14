variable "pred_data_validation_function_name" {
  default = "wafer-pred_data_validation"
  type    = string
}

variable "pred_data_validation_package_type" {
  default = "Image"
  type    = string
}

variable "pred_data_validation_lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}

variable "pred_data_validation_lambda_iam_role_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  type    = string
}

variable "pred_data_validation_lambda_memory_size" {
  default = 2048
  type    = number
}

variable "pred_data_validation_lambda_timeout" {
  default = 900
  type    = number
}