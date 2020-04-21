module "dev_cluster" {
  source = "github.com/ibm-garage-cloud/garage-terraform-modules.git//cloud-managed/cluster/ibmcloud?ref=v2.3.2"

  resource_group_name     = var.resource_group_name
  cluster_name            = var.cluster_name
  private_vlan_id         = var.private_vlan_id
  public_vlan_id          = var.public_vlan_id
  vlan_datacenter         = var.vlan_datacenter
  cluster_region          = var.vlan_region
  kubeconfig_download_dir = var.user_home_dir
  cluster_machine_type    = var.cluster_machine_type
  cluster_worker_count    = var.cluster_worker_count
  cluster_hardware        = var.cluster_hardware
  cluster_type            = var.cluster_type
  cluster_exists          = var.cluster_exists
  ibmcloud_api_key        = var.ibmcloud_api_key
  name_prefix             = var.name_prefix
}

module "dev_cluster_namespaces" {
  source = "github.com/ibm-garage-cloud/garage-terraform-modules.git//generic/cluster/namespaces?ref=v2.3.3"

  cluster_type             = module.dev_cluster.type
  cluster_config_file_path = module.dev_cluster.config_file_path
  tls_secret_name          = module.dev_cluster.tls_secret_name
  tools_namespace          = var.tools_namespace
  release_namespaces       = var.release_namespaces
}
