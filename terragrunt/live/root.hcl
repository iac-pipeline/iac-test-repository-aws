remote_state {
    backend = "s3"
    generate = {
        path = "backend.tf"
        if_exists = "overwrite"
    }
    config = {
        bucket = "dissertation-state-store"
        key          = "${path_relative_to_include()}/terraform.tfstate"
        region       = "eu-west-1"
        encrypt = true
        use_lockfile = true
    }
}