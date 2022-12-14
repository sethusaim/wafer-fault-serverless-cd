variable "preprocessing_pred_function_name" {
  default = "wafer-preprocessing_pred"
  type    = string
}

variable "preprocessing_pred_package_type" {
  default = "Image"
  type    = string
}

variable "preprocessing_pred_lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}

variable "preprocessing_pred_lambda_iam_role_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  type    = string
}

variable "preprocessing_pred_lambda_memory_size" {
  default = 2048
  type    = number
}

variable "preprocessing_pred_lambda_timeout" {
  default = 900
  type    = number
}