
# ------ Root Compartment
locals {
    Okit_857cddee5ba5440daf16e40e038ad535_id              = var.compartment_ocid
}

output "Okit_857cddee5ba5440daf16e40e038ad535Id" {
    value = local.Okit_857cddee5ba5440daf16e40e038ad535_id
}

# ------ Create Compartment - Root False
# ------ Create Compartment
resource "oci_identity_compartment" "Okit_6f8394f5a1024176b7c7d011fa004a2d" {
    provider       = oci.home_region
    #Required
    compartment_id = local.Okit_857cddee5ba5440daf16e40e038ad535_id
    description = "compartments for instances"
    name   = "QMInstComp"

    #Optional
        defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T00:37:27.886Z"}
        freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-fa9e9d6f-abb8-4c64-8f38-ed4c7abf62e0", "okit_version": "0.56.0"}
    enable_delete = false
}

locals {
    Okit_6f8394f5a1024176b7c7d011fa004a2d_id = oci_identity_compartment.Okit_6f8394f5a1024176b7c7d011fa004a2d.id
}

output "Okit_6f8394f5a1024176b7c7d011fa004a2dId" {
    value = local.Okit_6f8394f5a1024176b7c7d011fa004a2d_id
}

# ------ Create Compartment - Root False
# ------ Create Compartment
resource "oci_identity_compartment" "Okit_287ec2af89c941eca1e4c6da503cb322" {
    provider       = oci.home_region
    #Required
    compartment_id = local.Okit_857cddee5ba5440daf16e40e038ad535_id
    description = "Compartment for Networks"
    name   = "QMNetComp"

    #Optional
        defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:17:35.342Z"}
        freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-1f7494ea-58ab-4b81-a9bf-57ecbb14ac7b", "okit_version": "0.56.0"}
    enable_delete = false
}

locals {
    Okit_287ec2af89c941eca1e4c6da503cb322_id = oci_identity_compartment.Okit_287ec2af89c941eca1e4c6da503cb322.id
}

output "Okit_287ec2af89c941eca1e4c6da503cb322Id" {
    value = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
}
