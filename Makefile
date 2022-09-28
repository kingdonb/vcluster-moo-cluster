.PHONY: howard connect-howard

howard:
	vcluster create howard-moomboo-cluster -n vcluster-howard-moomboo-space --connect=false -f howard-values.yaml

connect-howard:
	vcluster connect howard-moomboo-cluster -n vcluster-howard-moomboo-space --server=https://howard.moomboo.space
