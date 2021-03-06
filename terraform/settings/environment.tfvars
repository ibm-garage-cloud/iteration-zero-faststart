# The type of cluster that will be created/used (kubernetes, openshift, ocp4, or crc) Use "openshift" for OpenShift 3.11
cluster_type="ocp4"
# Flag indicating if we are using an existing cluster or creating a new one
cluster_exists="true"

# The prefix that should be applied to the cluster name and service names (if not provided
# explicitly). If not provided then the resource_group_name will be used as the prefix.
#name_prefix="<name prefix for cluster and services>"

# The cluster name can be provided (particularly if using an existing cluster). The value
# for cluster name used by the scripts will be set in the following order of presidence:
# - "${cluster_name}"
# - "${name_prefix}-cluster"
# - "${resource_group_name}-cluster"
cluster_name="faststart-ap-cluster"

resource_group_name="faststart-one"
vlan_region="us-east"

tools_namespace="userXX-tools"