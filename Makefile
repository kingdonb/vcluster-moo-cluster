.PHONY: howard connect-howard rename-howard delete-howard all delete-howard-vcluster delete-all

howard:
	vcluster create howard-moomboo-cluster -n vcluster-howard-moomboo-space --connect=false -f howard-values.yaml

connect-howard:
	vcluster connect howard-moomboo-cluster -n vcluster-howard-moomboo-space --server=https://howard.moomboo.space

rename-howard:
	kubectl config rename-context vcluster_howard-moomboo-cluster_vcluster-howard-moomboo-space_loft_loft-cluster howard-space

delete-howard:
	kubectl config delete-context howard-space

delete-howard-vcluster:
	vcluster delete howard-moomboo-cluster -n vcluster-howard-moomboo-space

all: howard connect-howard rename-howard
	# delete-howard and delete-howard-vcluster to run all again

delete-all: delete-howard delete-howard-vcluster
