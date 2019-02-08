# Cheatsheet

## Check on etcd health
`kubectl exec etcd-kubernetes --namespace=kube-system -i -t -- sh -c 'ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd/ca.crt --key=/etc/kubernetes/pki/etcd/healthcheck-client.key --cert=/etc/kubernetes/pki/etcd/healthcheck-client.crt --write-out=table endpoint status'`



