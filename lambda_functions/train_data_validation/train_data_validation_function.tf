resource "aws_lambda_function" "train_data_validation_lambda" {
  function_name = var.train_data_validation_function_name
  role          = aws_iam_role.lambda_iam.arn
  package_type  = var.train_data_validation_package_type
  image_uri     = data.local_file.train_data_validation_lambda_uri_file.content
}

data "local_file" "train_data_validation_lambda_uri_file" {
  filename = "./lambda_function_uri/train_data_validation_uri.txt"
}
