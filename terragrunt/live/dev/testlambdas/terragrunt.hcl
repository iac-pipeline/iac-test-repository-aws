terraform {
    source = "../../../modules/modules_test_lambda"
}

inputs = {
    lambda_name = "test_lambda_1-dev"
}

include {
    path = find_in_parent_folders("root.hcl")
}