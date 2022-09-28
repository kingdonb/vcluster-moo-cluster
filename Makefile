.PHONY: howard

howard:
	vcluster create howard-moomboo-cluster -n vcluster-howard-moomboo-space --connect=false -f howard-values.yaml
