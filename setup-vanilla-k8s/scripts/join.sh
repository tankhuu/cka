# Run it in-case token is expired

# sudo kubeadm join 172.31.5.132:6443 --token l2rqan.a2rdq6eaogkxoqrk \
#	--discovery-token-ca-cert-hash sha256:867c326df63003ec0685c23137762d09e21171a60412cb2b9cbf983ef3113e5a

sudo kubeadm token create --print-join-command