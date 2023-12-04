
# ------ Create Dhcp Options
# ------- Update VCN Default DHCP Option
resource "oci_core_default_dhcp_options" "Okit_cfa95029fa6f44fdb4e720434d576197" {
    # Required
    manage_default_resource_id = local.Okit_f906b12f37c7441f9ddf27f2aaf506bc_default_dhcp_options_id
    options    {
        type  = "DomainNameServer"
        server_type = "VcnLocalPlusInternet"
    }
    options    {
        type  = "SearchDomain"
        search_domain_names      = ["okvcn.oraclevcn.com"]
    }
    # Optional
    display_name   = "QMvcn03dhcp"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/rotter633@gmail.com", "Oracle-Tags.CreatedOn": "2023-12-03T03:19:02.126Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-38b466da-dead-42a6-97ce-dfc5a13071c7", "okit_version": "0.56.0"}
}

locals {
    Okit_cfa95029fa6f44fdb4e720434d576197_id = oci_core_default_dhcp_options.Okit_cfa95029fa6f44fdb4e720434d576197.id
    }


# ------ Create Dhcp Options
# ------- Update VCN Default DHCP Option
resource "oci_core_default_dhcp_options" "Okit_6e70de1d9aa445a9a38415896396ea17" {
    # Required
    manage_default_resource_id = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_default_dhcp_options_id
    options    {
        type  = "DomainNameServer"
        server_type = "VcnLocalPlusInternet"
    }
    options    {
        type  = "SearchDomain"
        search_domain_names      = ["qmvcn01.oraclevcn.com"]
    }
    # Optional
    display_name   = "QMvcn01dhcp"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:21:31.869Z"}
    freeform_tags  = {"VCN": "VCN-2023-12-02T22:19:58", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-826060a2-eb4f-429f-86d0-ec0daa9c1c14", "okit_version": "0.56.0"}
}

locals {
    Okit_6e70de1d9aa445a9a38415896396ea17_id = oci_core_default_dhcp_options.Okit_6e70de1d9aa445a9a38415896396ea17.id
    }


# ------ Create Dhcp Options
# ------- Update VCN Default DHCP Option
resource "oci_core_default_dhcp_options" "Okit_cc2cebc3e9fb4ce7815e3757021af7d6" {
    # Required
    manage_default_resource_id = local.Okit_8390953137384be49a52d555e79ff270_default_dhcp_options_id
    options    {
        type  = "DomainNameServer"
        server_type = "VcnLocalPlusInternet"
    }
    options    {
        type  = "SearchDomain"
        search_domain_names      = ["qmvcn02.oraclevcn.com"]
    }
    # Optional
    display_name   = "QMvcn02dhcp01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:23:54.847Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-41f6e458-f60b-45cd-bb24-e7f2ec5450a9", "okit_version": "0.56.0"}
}

locals {
    Okit_cc2cebc3e9fb4ce7815e3757021af7d6_id = oci_core_default_dhcp_options.Okit_cc2cebc3e9fb4ce7815e3757021af7d6.id
    }


# ------ Create Internet Gateway
resource "oci_core_internet_gateway" "Okit_ddbd6788be5748f1912c7aef51abe4b4" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    # Optional
    enabled        = true
    display_name   = "QMvcn01igw"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:21:32.496Z"}
    freeform_tags  = {"VCN": "VCN-2023-12-02T22:19:58", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-0aba2deb-2c17-43c0-b70e-dfa04f28b31c", "okit_version": "0.56.0"}
}

locals {
    Okit_ddbd6788be5748f1912c7aef51abe4b4_id = oci_core_internet_gateway.Okit_ddbd6788be5748f1912c7aef51abe4b4.id
}


# ------ Create Local Peering Gateway
resource "oci_core_local_peering_gateway" "Okit_d32d792dd3c54baaa6aed2399759d2ee" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    # Optional
    display_name   = "QMvcn01lpg01"
    peer_id  = local.Okit_5a4af84244af4b7dbe250c11cac01f9b_id
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:39:27.047Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-b3beec1a-20e5-4235-94b5-2e6dff42b68b", "okit_version": "0.56.0"}
}

locals {
    Okit_d32d792dd3c54baaa6aed2399759d2ee_id = oci_core_local_peering_gateway.Okit_d32d792dd3c54baaa6aed2399759d2ee.id
}


# ------ Create Local Peering Gateway
resource "oci_core_local_peering_gateway" "Okit_5a4af84244af4b7dbe250c11cac01f9b" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_8390953137384be49a52d555e79ff270_id
    # Optional
    display_name   = "QMvcn02lpg01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:40:00.282Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-4a7a5608-74ff-4dfe-9a04-5b59437f68df", "okit_version": "0.56.0"}
}

locals {
    Okit_5a4af84244af4b7dbe250c11cac01f9b_id = oci_core_local_peering_gateway.Okit_5a4af84244af4b7dbe250c11cac01f9b.id
}


# ------ Create NAT Gateway
resource "oci_core_nat_gateway" "Okit_0e044f27d4a349b68f53d3f38debe187" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    # Optional
    display_name   = "QMvcn01ngw"
    block_traffic  = false
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:21:32.507Z"}
    freeform_tags  = {"VCN": "VCN-2023-12-02T22:19:58", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-c743679c-21aa-45ab-b948-0013d221f674", "okit_version": "0.56.0"}
}

locals {
    Okit_0e044f27d4a349b68f53d3f38debe187_id = oci_core_nat_gateway.Okit_0e044f27d4a349b68f53d3f38debe187.id
}


# ------ Create NAT Gateway
resource "oci_core_nat_gateway" "Okit_6a7018cf56184c22a9fccdb9eb8ed7f7" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_8390953137384be49a52d555e79ff270_id
    # Optional
    display_name   = "vcn02s01ngw"
    block_traffic  = false
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:44:51.126Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-4adaecd8-9681-4d09-ae13-2e1b68b8dac2", "okit_version": "0.56.0"}
}

locals {
    Okit_6a7018cf56184c22a9fccdb9eb8ed7f7_id = oci_core_nat_gateway.Okit_6a7018cf56184c22a9fccdb9eb8ed7f7.id
}


# ------ Create Network Security Group
resource "oci_core_network_security_group" "Okit_f183bc3fb5e3470cbdb3118ef0ec55d5" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    # Optional
    display_name   = "Qvcn01nsg02-http"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/rotter633@gmail.com", "Oracle-Tags.CreatedOn": "2023-12-03T02:06:02.161Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-5f45b0b3-da23-4ef7-a298-67a1eba5c422", "okit_version": "0.56.0"}
}

locals {
    Okit_f183bc3fb5e3470cbdb3118ef0ec55d5_id = oci_core_network_security_group.Okit_f183bc3fb5e3470cbdb3118ef0ec55d5.id
}

# ------ Create Network Security Group Rules
resource "oci_core_network_security_group_security_rule" "Okit_f183bc3fb5e3470cbdb3118ef0ec55d5_Rule1" {
    # Required
    network_security_group_id = local.Okit_f183bc3fb5e3470cbdb3118ef0ec55d5_id
    direction    = "INGRESS"
    protocol    = "6"
    # Optional
    description   = "http transport"
        source = "0.0.0.0/0"
        source_type  = "CIDR_BLOCK"
        tcp_options {
            destination_port_range {
            min = 80
            max = 80
            }
            source_port_range {
            min = 80
            max = 80
            }
        }
}

locals {
    Okit_f183bc3fb5e3470cbdb3118ef0ec55d5_Rule1_id = oci_core_network_security_group_security_rule.Okit_f183bc3fb5e3470cbdb3118ef0ec55d5_Rule1.id
}


# ------ Create Network Security Group
resource "oci_core_network_security_group" "Okit_c644c707fdd34618aa9b868197c843e4" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_8390953137384be49a52d555e79ff270_id
    # Optional
    display_name   = "vcn02sn01nsg02-http"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:50:43.621Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-e30f9c15-d30b-479b-ac54-ca71b02070f6", "okit_version": "0.56.0"}
}

locals {
    Okit_c644c707fdd34618aa9b868197c843e4_id = oci_core_network_security_group.Okit_c644c707fdd34618aa9b868197c843e4.id
}

# ------ Create Network Security Group Rules
resource "oci_core_network_security_group_security_rule" "Okit_c644c707fdd34618aa9b868197c843e4_Rule1" {
    # Required
    network_security_group_id = local.Okit_c644c707fdd34618aa9b868197c843e4_id
    direction    = "INGRESS"
    protocol    = "6"
    # Optional
    description   = "http transport"
        source = "0.0.0.0/0"
        source_type  = "CIDR_BLOCK"
        tcp_options {
            destination_port_range {
            min = 80
            max = 80
            }
            source_port_range {
            min = 80
            max = 80
            }
        }
}

locals {
    Okit_c644c707fdd34618aa9b868197c843e4_Rule1_id = oci_core_network_security_group_security_rule.Okit_c644c707fdd34618aa9b868197c843e4_Rule1.id
}


# ------ Create Network Security Group
resource "oci_core_network_security_group" "Okit_ab8f7d1bbf1c4d2395f83a174b53863f" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    # Optional
    display_name   = "QMvn01nsg01-ssh"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/rotter633@gmail.com", "Oracle-Tags.CreatedOn": "2023-12-03T02:06:01.842Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-25928395-ccba-46fe-bad5-cb222b766148", "okit_version": "0.56.0"}
}

locals {
    Okit_ab8f7d1bbf1c4d2395f83a174b53863f_id = oci_core_network_security_group.Okit_ab8f7d1bbf1c4d2395f83a174b53863f.id
}

# ------ Create Network Security Group Rules
resource "oci_core_network_security_group_security_rule" "Okit_ab8f7d1bbf1c4d2395f83a174b53863f_Rule1" {
    # Required
    network_security_group_id = local.Okit_ab8f7d1bbf1c4d2395f83a174b53863f_id
    direction    = "INGRESS"
    protocol    = "6"
    # Optional
    description   = "tcp"
        source = "0.0.0.0/0"
        source_type  = "CIDR_BLOCK"
        tcp_options {
            destination_port_range {
            min = 20
            max = 22
            }
            source_port_range {
            min = 20
            max = 22
            }
        }
}

locals {
    Okit_ab8f7d1bbf1c4d2395f83a174b53863f_Rule1_id = oci_core_network_security_group_security_rule.Okit_ab8f7d1bbf1c4d2395f83a174b53863f_Rule1.id
}


# ------ Create Network Security Group
resource "oci_core_network_security_group" "Okit_92e071da07d546e0a53e8acafc9f0787" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    # Optional
    display_name   = "QMvn01nsg03-https"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/rotter633@gmail.com", "Oracle-Tags.CreatedOn": "2023-12-03T02:06:01.721Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-6746d7f6-5fb3-4398-be70-d24a4b7812db", "okit_version": "0.56.0"}
}

locals {
    Okit_92e071da07d546e0a53e8acafc9f0787_id = oci_core_network_security_group.Okit_92e071da07d546e0a53e8acafc9f0787.id
}

# ------ Create Network Security Group Rules
resource "oci_core_network_security_group_security_rule" "Okit_92e071da07d546e0a53e8acafc9f0787_Rule1" {
    # Required
    network_security_group_id = local.Okit_92e071da07d546e0a53e8acafc9f0787_id
    direction    = "INGRESS"
    protocol    = "6"
    # Optional
    description   = "htps transport"
        source = "0.0.0.0/0"
        source_type  = "CIDR_BLOCK"
        tcp_options {
            destination_port_range {
            min = 443
            max = 443
            }
            source_port_range {
            min = 443
            max = 443
            }
        }
}

locals {
    Okit_92e071da07d546e0a53e8acafc9f0787_Rule1_id = oci_core_network_security_group_security_rule.Okit_92e071da07d546e0a53e8acafc9f0787_Rule1.id
}


# ------ Create Network Security Group
resource "oci_core_network_security_group" "Okit_cbeb5c7bd1434afaa2009ab7752e416f" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_8390953137384be49a52d555e79ff270_id
    # Optional
    display_name   = "vcn02sn01nsg02-https"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:50:43.621Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-075e6847-aed5-4237-b04c-93e917f6cadd", "okit_version": "0.56.0"}
}

locals {
    Okit_cbeb5c7bd1434afaa2009ab7752e416f_id = oci_core_network_security_group.Okit_cbeb5c7bd1434afaa2009ab7752e416f.id
}

# ------ Create Network Security Group Rules
resource "oci_core_network_security_group_security_rule" "Okit_cbeb5c7bd1434afaa2009ab7752e416f_Rule1" {
    # Required
    network_security_group_id = local.Okit_cbeb5c7bd1434afaa2009ab7752e416f_id
    direction    = "INGRESS"
    protocol    = "6"
    # Optional
    description   = "https"
        source = "0.0.0.0/0"
        source_type  = "CIDR_BLOCK"
        tcp_options {
            destination_port_range {
            min = 80
            max = 80
            }
            source_port_range {
            min = 80
            max = 80
            }
        }
}

locals {
    Okit_cbeb5c7bd1434afaa2009ab7752e416f_Rule1_id = oci_core_network_security_group_security_rule.Okit_cbeb5c7bd1434afaa2009ab7752e416f_Rule1.id
}


# ------ Create Network Security Group
resource "oci_core_network_security_group" "Okit_00f6f16495ef4b59bbf8c42d080fb34d" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_8390953137384be49a52d555e79ff270_id
    # Optional
    display_name   = "vcn02sn01nsg01-ssh"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:50:43.621Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-429f152d-5bd6-4d30-bf9c-e515a52d2388", "okit_version": "0.56.0"}
}

locals {
    Okit_00f6f16495ef4b59bbf8c42d080fb34d_id = oci_core_network_security_group.Okit_00f6f16495ef4b59bbf8c42d080fb34d.id
}

# ------ Create Network Security Group Rules
resource "oci_core_network_security_group_security_rule" "Okit_00f6f16495ef4b59bbf8c42d080fb34d_Rule1" {
    # Required
    network_security_group_id = local.Okit_00f6f16495ef4b59bbf8c42d080fb34d_id
    direction    = "INGRESS"
    protocol    = "6"
    # Optional
    description   = "ssh traffic"
        source = "0.0.0.0/0"
        source_type  = "CIDR_BLOCK"
        tcp_options {
            destination_port_range {
            min = 20
            max = 22
            }
            source_port_range {
            min = 20
            max = 22
            }
        }
}

locals {
    Okit_00f6f16495ef4b59bbf8c42d080fb34d_Rule1_id = oci_core_network_security_group_security_rule.Okit_00f6f16495ef4b59bbf8c42d080fb34d_Rule1.id
}


# ------ Create Route Table
# ------- Update VCN Default Route Table
resource "oci_core_default_route_table" "Okit_e616c240510f4dc0900425526133ad4e" {
    # Required
    manage_default_resource_id = local.Okit_f906b12f37c7441f9ddf27f2aaf506bc_default_route_table_id
    # Optional
    display_name   = "QMvcn03rt01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/rotter633@gmail.com", "Oracle-Tags.CreatedOn": "2023-12-03T03:19:02.126Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-8a22b1b2-eb15-4336-8bf2-f0cbb4dd67f6", "okit_version": "0.56.0"}
}

locals {
    Okit_e616c240510f4dc0900425526133ad4e_id = oci_core_default_route_table.Okit_e616c240510f4dc0900425526133ad4e.id
    }


# ------ Create Route Table
resource "oci_core_route_table" "Okit_2d03e11e26054f5b82f41c59c5659a9b" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    route_rules    {
        destination_type  = "CIDR_BLOCK"
        destination       = "192.168.0.0/16"
        network_entity_id = local.Okit_d32d792dd3c54baaa6aed2399759d2ee_id
    }
    # Optional
    display_name   = "QMvcn01rt02lpg"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:41:47.753Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-7d115785-1ed2-4574-9f6c-6235c3b62640", "okit_version": "0.56.0"}
}

locals {
    Okit_2d03e11e26054f5b82f41c59c5659a9b_id = oci_core_route_table.Okit_2d03e11e26054f5b82f41c59c5659a9b.id
}


# ------ Create Route Table
resource "oci_core_route_table" "Okit_abcd96909fce4507918b8dc6397baf32" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    route_rules    {
        destination_type  = "SERVICE_CIDR_BLOCK"
        destination       = local.all_services_destination
        network_entity_id = local.Okit_3e83fbf7f2554f3b97b91e36d52dc803_id
    }
    route_rules    {
        destination_type  = "CIDR_BLOCK"
        destination       = "0.0.0.0/0"
        network_entity_id = local.Okit_0e044f27d4a349b68f53d3f38debe187_id
    }
    # Optional
    display_name   = "QMvcn01s01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:21:32.598Z"}
    freeform_tags  = {"VCN": "VCN-2023-12-02T22:19:58", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-5b13903f-dc69-46eb-867e-4153884da5b8", "okit_version": "0.56.0"}
}

locals {
    Okit_abcd96909fce4507918b8dc6397baf32_id = oci_core_route_table.Okit_abcd96909fce4507918b8dc6397baf32.id
}


# ------ Create Route Table
resource "oci_core_route_table" "Okit_b99bc1cfa7b1488189ad13719289faee" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_8390953137384be49a52d555e79ff270_id
    route_rules    {
        destination_type  = "CIDR_BLOCK"
        destination       = "10.0.0.0/16"
        network_entity_id = local.Okit_5a4af84244af4b7dbe250c11cac01f9b_id
    }
    # Optional
    display_name   = "QMvcn02rt02lpg"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:40:52.366Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-7d1feb0b-b5aa-413e-b591-d827e0cfd29b", "okit_version": "0.56.0"}
}

locals {
    Okit_b99bc1cfa7b1488189ad13719289faee_id = oci_core_route_table.Okit_b99bc1cfa7b1488189ad13719289faee.id
}


# ------ Create Route Table
# ------- Update VCN Default Route Table
resource "oci_core_default_route_table" "Okit_64fe137b9ab6450189eaaa7238cf9717" {
    # Required
    manage_default_resource_id = local.Okit_8390953137384be49a52d555e79ff270_default_route_table_id
    route_rules    {
        destination_type  = "CIDR_BLOCK"
        destination       = "0.0.0.0/0"
        network_entity_id = local.Okit_6a7018cf56184c22a9fccdb9eb8ed7f7_id
    }
    route_rules    {
        destination_type  = "CIDR_BLOCK"
        destination       = "10.0.0.0/16"
        network_entity_id = local.Okit_5a4af84244af4b7dbe250c11cac01f9b_id
    }
    # Optional
    display_name   = "QMvcn02sn01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:23:54.847Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-587555d0-0f77-4a8c-a19b-5ef287ea925d", "okit_version": "0.56.0"}
}

locals {
    Okit_64fe137b9ab6450189eaaa7238cf9717_id = oci_core_default_route_table.Okit_64fe137b9ab6450189eaaa7238cf9717.id
    }


# ------ Create Route Table
# ------- Update VCN Default Route Table
resource "oci_core_default_route_table" "Okit_b9883997a0114698a048ef0f9598ffb3" {
    # Required
    manage_default_resource_id = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_default_route_table_id
    route_rules    {
        destination_type  = "CIDR_BLOCK"
        destination       = "0.0.0.0/0"
        network_entity_id = local.Okit_ddbd6788be5748f1912c7aef51abe4b4_id
    }
    # Optional
    display_name   = "QMvcn01rt01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:21:31.869Z"}
    freeform_tags  = {"VCN": "VCN-2023-12-02T22:19:58", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-160d5bc0-9e3a-4728-b1f6-ac2c28259fd4", "okit_version": "0.56.0"}
}

locals {
    Okit_b9883997a0114698a048ef0f9598ffb3_id = oci_core_default_route_table.Okit_b9883997a0114698a048ef0f9598ffb3.id
    }


# ------ Create Security List
# ------- Update VCN Default Security List
resource "oci_core_default_security_list" "Okit_5571ba5143254d86b2ae547b1abb9cca" {
    # Required
    manage_default_resource_id = local.Okit_f906b12f37c7441f9ddf27f2aaf506bc_default_security_list_id
    egress_security_rules {
        # Required
        protocol    = "all"
        destination = "0.0.0.0/0"
        # Optional
        destination_type  = "CIDR_BLOCK"
    }
    ingress_security_rules {
        # Required
        protocol    = "1"
        source      = "0.0.0.0/0"
        # Optional
        source_type  = "CIDR_BLOCK"
        icmp_options {
            type = 3
            code = 4
        }
    }
    ingress_security_rules {
        # Required
        protocol    = "1"
        source      = "10.1.0.0/16"
        # Optional
        source_type  = "CIDR_BLOCK"
        icmp_options {
            type = 3
        }
    }
    ingress_security_rules {
        # Required
        protocol    = "6"
        source      = "0.0.0.0/0"
        # Optional
        source_type  = "CIDR_BLOCK"
        tcp_options {
            min = 22
            max = 22
        }
    }
    # Optional
    display_name   = "QMvcn03sl01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/rotter633@gmail.com", "Oracle-Tags.CreatedOn": "2023-12-03T03:19:02.126Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-455abbad-bef7-4356-9a18-63bb679ff990", "okit_version": "0.56.0"}
}

locals {
    Okit_5571ba5143254d86b2ae547b1abb9cca_id = oci_core_default_security_list.Okit_5571ba5143254d86b2ae547b1abb9cca.id
}


# ------ Create Security List
resource "oci_core_security_list" "Okit_0a3e8966a65e419eb04fe1d3f2da172a" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    egress_security_rules {
        # Required
        protocol    = "all"
        destination = "0.0.0.0/0"
        # Optional
        destination_type  = "CIDR_BLOCK"
    }
    ingress_security_rules {
        # Required
        protocol    = "1"
        source      = "0.0.0.0/0"
        # Optional
        source_type  = "CIDR_BLOCK"
        icmp_options {
            type = 3
            code = 4
        }
    }
    ingress_security_rules {
        # Required
        protocol    = "6"
        source      = "10.0.0.0/16"
        # Optional
        source_type  = "CIDR_BLOCK"
        tcp_options {
            min = 22
            max = 22
        }
    }
    ingress_security_rules {
        # Required
        protocol    = "1"
        source      = "10.0.0.0/16"
        # Optional
        source_type  = "CIDR_BLOCK"
        icmp_options {
            type = 3
        }
    }
    # Optional
    display_name   = "QMvcn01sl01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:21:32.779Z"}
    freeform_tags  = {"VCN": "VCN-2023-12-02T22:19:58", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-0de3ff66-94ef-47cc-9729-71f67922b47f", "okit_version": "0.56.0"}
}

locals {
    Okit_0a3e8966a65e419eb04fe1d3f2da172a_id = oci_core_security_list.Okit_0a3e8966a65e419eb04fe1d3f2da172a.id
}


# ------ Create Security List
# ------- Update VCN Default Security List
resource "oci_core_default_security_list" "Okit_225b68a6768245dcb637a72daae53dfa" {
    # Required
    manage_default_resource_id = local.Okit_8390953137384be49a52d555e79ff270_default_security_list_id
    egress_security_rules {
        # Required
        protocol    = "1"
        destination = "0.0.0.0/0"
        # Optional
        destination_type  = "CIDR_BLOCK"
        icmp_options {
            type = 8
            code = 8
        }
    }
    ingress_security_rules {
        # Required
        protocol    = "1"
        source      = "0.0.0.0/0"
        # Optional
        source_type  = "CIDR_BLOCK"
        icmp_options {
            type = 3
            code = 4
        }
    }
    ingress_security_rules {
        # Required
        protocol    = "1"
        source      = "0.0.0.0/0"
        # Optional
        source_type  = "CIDR_BLOCK"
        icmp_options {
            type = 3
        }
    }
    # Optional
    display_name   = "QMvcn02sl01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:23:54.847Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-cc6945e8-28b4-479f-a428-5029935dc4b7", "okit_version": "0.56.0"}
}

locals {
    Okit_225b68a6768245dcb637a72daae53dfa_id = oci_core_default_security_list.Okit_225b68a6768245dcb637a72daae53dfa.id
}


# ------ Create Security List
# ------- Update VCN Default Security List
resource "oci_core_default_security_list" "Okit_2ede6355d73745c98f12143c49b24a8b" {
    # Required
    manage_default_resource_id = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_default_security_list_id
    egress_security_rules {
        # Required
        protocol    = "1"
        destination = "0.0.0.0/0"
        # Optional
        destination_type  = "CIDR_BLOCK"
        icmp_options {
            type = 8
            code = 8
        }
    }
    ingress_security_rules {
        # Required
        protocol    = "1"
        source      = "0.0.0.0/0"
        # Optional
        source_type  = "CIDR_BLOCK"
        icmp_options {
            type = 3
            code = 4
        }
    }
    ingress_security_rules {
        # Required
        protocol    = "1"
        source      = "10.0.0.0/16"
        # Optional
        source_type  = "CIDR_BLOCK"
        icmp_options {
            type = 3
        }
    }
    # Optional
    display_name   = "QMvcn01s01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:21:31.869Z"}
    freeform_tags  = {"VCN": "VCN-2023-12-02T22:19:58", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-b81ae94a-67cc-4d9d-9096-4499368093bf", "okit_version": "0.56.0"}
}

locals {
    Okit_2ede6355d73745c98f12143c49b24a8b_id = oci_core_default_security_list.Okit_2ede6355d73745c98f12143c49b24a8b.id
}



# ------ Create Service Gateway
resource "oci_core_service_gateway" "Okit_3e83fbf7f2554f3b97b91e36d52dc803" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id         = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    services {
        service_id = local.all_services_id
    }
    # Optional
    display_name   = "QMvcn01sgw"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:21:32.685Z"}
    freeform_tags  = {"VCN": "VCN-2023-12-02T22:19:58", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-ea1b9116-5cbf-4f24-9bd7-43c2988f46df", "okit_version": "0.56.0"}
}

locals {
    Okit_3e83fbf7f2554f3b97b91e36d52dc803_id = oci_core_service_gateway.Okit_3e83fbf7f2554f3b97b91e36d52dc803.id
}


# ------ Create Subnet
# ---- Create Public Subnet
resource "oci_core_subnet" "Okit_496913e2c9ba4e9d961bff582cd07d8f" {
    # Required
    compartment_id             = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id                     = local.Okit_8390953137384be49a52d555e79ff270_id
    cidr_block                 = "192.168.2.0/24"
    # Optional 
    display_name               = "vcn02sn02"
    dns_label                  = "vcn02sn02"
    security_list_ids          = [local.Okit_225b68a6768245dcb637a72daae53dfa_id]
    route_table_id             = local.Okit_64fe137b9ab6450189eaaa7238cf9717_id
    dhcp_options_id            = local.Okit_cc2cebc3e9fb4ce7815e3757021af7d6_id
    prohibit_public_ip_on_vnic = true
    defined_tags               = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:29:53.808Z"}
    freeform_tags              = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-b46066ba-3e88-4b4b-bf1f-6c529b630381", "okit_version": "0.56.0"}
}

locals {
    Okit_496913e2c9ba4e9d961bff582cd07d8f_id              = oci_core_subnet.Okit_496913e2c9ba4e9d961bff582cd07d8f.id
    Okit_496913e2c9ba4e9d961bff582cd07d8f_domain_name     = oci_core_subnet.Okit_496913e2c9ba4e9d961bff582cd07d8f.subnet_domain_name
    Okit_496913e2c9ba4e9d961bff582cd07d8f_netmask         = substr(oci_core_subnet.Okit_496913e2c9ba4e9d961bff582cd07d8f.cidr_block, -2, -1)
    Okit_496913e2c9ba4e9d961bff582cd07d8f_cidr_block      = "192.168.2.0/24"
}


# ------ Create Subnet
# ---- Create Public Subnet
resource "oci_core_subnet" "Okit_5589bd010f194b2f941eac1a5726d92d" {
    # Required
    compartment_id             = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id                     = local.Okit_8390953137384be49a52d555e79ff270_id
    cidr_block                 = "192.168.1.0/24"
    # Optional 
    display_name               = "QMvcn02s01"
    dns_label                  = "qmvcn02s01"
    security_list_ids          = [local.Okit_225b68a6768245dcb637a72daae53dfa_id]
    route_table_id             = local.Okit_64fe137b9ab6450189eaaa7238cf9717_id
    dhcp_options_id            = local.Okit_cc2cebc3e9fb4ce7815e3757021af7d6_id
    prohibit_public_ip_on_vnic = true
    defined_tags               = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:29:03.378Z"}
    freeform_tags              = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-99d24f14-340a-47c8-bbf6-6198b5228993", "okit_version": "0.56.0"}
}

locals {
    Okit_5589bd010f194b2f941eac1a5726d92d_id              = oci_core_subnet.Okit_5589bd010f194b2f941eac1a5726d92d.id
    Okit_5589bd010f194b2f941eac1a5726d92d_domain_name     = oci_core_subnet.Okit_5589bd010f194b2f941eac1a5726d92d.subnet_domain_name
    Okit_5589bd010f194b2f941eac1a5726d92d_netmask         = substr(oci_core_subnet.Okit_5589bd010f194b2f941eac1a5726d92d.cidr_block, -2, -1)
    Okit_5589bd010f194b2f941eac1a5726d92d_cidr_block      = "192.168.1.0/24"
}


# ------ Create Subnet
# ---- Create Public Subnet
resource "oci_core_subnet" "Okit_7a710c6e067846878a5bed64db66b0cb" {
    # Required
    compartment_id             = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id                     = local.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id
    cidr_block                 = "10.0.0.0/24"
    # Optional 
    display_name               = "QMvnc01s01"
    dns_label                  = "sub12022221180"
    security_list_ids          = [local.Okit_2ede6355d73745c98f12143c49b24a8b_id]
    route_table_id             = local.Okit_b9883997a0114698a048ef0f9598ffb3_id
    dhcp_options_id            = local.Okit_6e70de1d9aa445a9a38415896396ea17_id
    prohibit_public_ip_on_vnic = false
    defined_tags               = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:21:32.479Z"}
    freeform_tags              = {"VCN": "VCN-2023-12-02T22:19:58", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-25208d9b-22d6-4308-84f9-2875957bf24c", "okit_version": "0.56.0"}
}

locals {
    Okit_7a710c6e067846878a5bed64db66b0cb_id              = oci_core_subnet.Okit_7a710c6e067846878a5bed64db66b0cb.id
    Okit_7a710c6e067846878a5bed64db66b0cb_domain_name     = oci_core_subnet.Okit_7a710c6e067846878a5bed64db66b0cb.subnet_domain_name
    Okit_7a710c6e067846878a5bed64db66b0cb_netmask         = substr(oci_core_subnet.Okit_7a710c6e067846878a5bed64db66b0cb.cidr_block, -2, -1)
    Okit_7a710c6e067846878a5bed64db66b0cb_cidr_block      = "10.0.0.0/24"
}


# ------ Create Subnet
# ---- Create Public Subnet
resource "oci_core_subnet" "Okit_S_1701573713155" {
    # Required
    compartment_id             = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    vcn_id                     = local.Okit_f906b12f37c7441f9ddf27f2aaf506bc_id
    cidr_block                 = "172.16.1.0/24"
    # Optional 
    display_name               = "QMvcn03s01"
    dns_label                  = "qmvcns"
    security_list_ids          = [local.Okit_5571ba5143254d86b2ae547b1abb9cca_id]
    route_table_id             = local.Okit_e616c240510f4dc0900425526133ad4e_id
    dhcp_options_id            = local.Okit_cfa95029fa6f44fdb4e720434d576197_id
    prohibit_public_ip_on_vnic = true
    freeform_tags              = {"okit_version": "0.56.0", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-8e5496a5-b116-454f-85f8-04eb0189ccbc"}
}

locals {
    Okit_S_1701573713155_id              = oci_core_subnet.Okit_S_1701573713155.id
    Okit_S_1701573713155_domain_name     = oci_core_subnet.Okit_S_1701573713155.subnet_domain_name
    Okit_S_1701573713155_netmask         = substr(oci_core_subnet.Okit_S_1701573713155.cidr_block, -2, -1)
    Okit_S_1701573713155_cidr_block      = "172.16.1.0/24"
}


# ------ Create Virtual Cloud Network
resource "oci_core_vcn" "Okit_f906b12f37c7441f9ddf27f2aaf506bc" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    cidr_blocks    = ["172.16.0.0/16"]
    # Optional
    dns_label      = "qmvcn03"
    display_name   = "QMvcn03"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/rotter633@gmail.com", "Oracle-Tags.CreatedOn": "2023-12-03T03:19:02.126Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-d0c4941b-07b6-44d1-ba41-83c6130db6d4", "okit_version": "0.56.0"}
    is_ipv6enabled  = false
}

locals {
    Okit_f906b12f37c7441f9ddf27f2aaf506bc_id                       = oci_core_vcn.Okit_f906b12f37c7441f9ddf27f2aaf506bc.id
    Okit_f906b12f37c7441f9ddf27f2aaf506bc_dhcp_options_id          = oci_core_vcn.Okit_f906b12f37c7441f9ddf27f2aaf506bc.default_dhcp_options_id
    Okit_f906b12f37c7441f9ddf27f2aaf506bc_domain_name              = oci_core_vcn.Okit_f906b12f37c7441f9ddf27f2aaf506bc.vcn_domain_name
    Okit_f906b12f37c7441f9ddf27f2aaf506bc_default_dhcp_options_id  = oci_core_vcn.Okit_f906b12f37c7441f9ddf27f2aaf506bc.default_dhcp_options_id
    Okit_f906b12f37c7441f9ddf27f2aaf506bc_default_security_list_id = oci_core_vcn.Okit_f906b12f37c7441f9ddf27f2aaf506bc.default_security_list_id
    Okit_f906b12f37c7441f9ddf27f2aaf506bc_default_route_table_id   = oci_core_vcn.Okit_f906b12f37c7441f9ddf27f2aaf506bc.default_route_table_id
}


# ------ Create Virtual Cloud Network
resource "oci_core_vcn" "Okit_8390953137384be49a52d555e79ff270" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    cidr_blocks    = ["192.168.0.0/16"]
    # Optional
    dns_label      = "qmvcn02"
    display_name   = "QMvcn02"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:23:54.847Z"}
    freeform_tags  = {"okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-a0ddce40-7750-42ea-b006-47d401474dae", "okit_version": "0.56.0"}
    is_ipv6enabled  = false
}

locals {
    Okit_8390953137384be49a52d555e79ff270_id                       = oci_core_vcn.Okit_8390953137384be49a52d555e79ff270.id
    Okit_8390953137384be49a52d555e79ff270_dhcp_options_id          = oci_core_vcn.Okit_8390953137384be49a52d555e79ff270.default_dhcp_options_id
    Okit_8390953137384be49a52d555e79ff270_domain_name              = oci_core_vcn.Okit_8390953137384be49a52d555e79ff270.vcn_domain_name
    Okit_8390953137384be49a52d555e79ff270_default_dhcp_options_id  = oci_core_vcn.Okit_8390953137384be49a52d555e79ff270.default_dhcp_options_id
    Okit_8390953137384be49a52d555e79ff270_default_security_list_id = oci_core_vcn.Okit_8390953137384be49a52d555e79ff270.default_security_list_id
    Okit_8390953137384be49a52d555e79ff270_default_route_table_id   = oci_core_vcn.Okit_8390953137384be49a52d555e79ff270.default_route_table_id
}


# ------ Create Virtual Cloud Network
resource "oci_core_vcn" "Okit_4f4e7209b32c4376a3ac0ec7b51e76fb" {
    # Required
    compartment_id = local.Okit_287ec2af89c941eca1e4c6da503cb322_id
    cidr_blocks    = ["10.0.0.0/16"]
    # Optional
    dns_label      = "qmvcn01"
    display_name   = "QMvcn01"
    defined_tags   = {"Oracle-Tags.CreatedBy": "default/richard.rotter@oracle.com", "Oracle-Tags.CreatedOn": "2023-12-02T22:21:31.869Z"}
    freeform_tags  = {"VCN": "VCN-2023-12-02T22:19:58", "okit_model_id": "okit-model-1cdb721d-2479-463b-8771-a88ff9512fde", "okit_reference": "okit-a8cb6425-a809-4576-866a-05a14150e4b9", "okit_version": "0.56.0"}
    is_ipv6enabled  = false
}

locals {
    Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_id                       = oci_core_vcn.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb.id
    Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_dhcp_options_id          = oci_core_vcn.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb.default_dhcp_options_id
    Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_domain_name              = oci_core_vcn.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb.vcn_domain_name
    Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_default_dhcp_options_id  = oci_core_vcn.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb.default_dhcp_options_id
    Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_default_security_list_id = oci_core_vcn.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb.default_security_list_id
    Okit_4f4e7209b32c4376a3ac0ec7b51e76fb_default_route_table_id   = oci_core_vcn.Okit_4f4e7209b32c4376a3ac0ec7b51e76fb.default_route_table_id
}

