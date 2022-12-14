resource "aws_lambda_function" "data_transform_pred_lambda" {
  function_name = var.data_transform_pred_function_name
  role          = aws_iam_role.data_transform_pred_lambda_iam.arn
  package_type  = var.data_transform_pred_package_type
  image_uri     = data.local_file.data_transform_pred_lambda_uri_file.content
  memory_size   = var.data_transform_pred_lambda_memory_size
  timeout       = var.data_transform_pred_lambda_timeout
}

data "local_file" "data_transform_pred_lambda_uri_file" {
  filename = "./lambda_function_manifests/wafer_data_transform_pred_uri.txt"
}
