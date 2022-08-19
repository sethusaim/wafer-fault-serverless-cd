resource "aws_lambda_function" "db_operation_train_lambda" {
  function_name = var.db_operation_train_function_name
  role          = aws_iam_role.lambda_iam.arn
  package_type  = var.db_operation_train_package_type
  image_uri     = data.local_file.db_operation_train_lambda_uri_file.content
}

data "local_file" "db_operation_train_lambda_uri_file" {
  filename = "./lambda_function_uri/db_operation_train_uri.txt"
}