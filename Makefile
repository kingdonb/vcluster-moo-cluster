.PHONY: howard connect-howard rename-howard

howard:
	vcluster create howard-moomboo-cluster -n vcluster-howard-moomboo-space --connect=false -f howard-values.yaml

connect-howard:
	vcluster connect howard-moomboo-cluster -n vcluster-howard-moomboo-space --server=https://howard.moomboo.space

rename-howard:
	kubectl config rename-context vcluster_howard-moomboo-cluster_vcluster-howard-moomboo-space_loft_loft-cluster howard-space
