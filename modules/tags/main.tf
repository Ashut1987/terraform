default_environments = {
    sb = "sb" #"SandBox"
    dev = "dev" #"Development"
    qa = "qa"  #"qa"
    prod = "prod" # "production"
}
default_cost_center = {
    odxi = ""
    odxm = ""
}
default_location_ids = {
    eastus = "eastus"
    centralus = "centralus"
    westus = "westus"
}
default_tags = {
    tag_version = "1.0"
    business_unit = "${var.tag_business_unit}"
    cost_center = "${local.default_cost_center}"
}