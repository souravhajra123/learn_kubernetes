## Execute ONLY on "Master Node"
===================================
sudo kubeadm init \
       --control-plane-endpoint "13.232.50.141:6443" \
       --upload-certs \
       --pod-network-cidr=10.244.0.0/16

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id-u):$(id -g) $HOME/.kube/config

#Network plugin
======================
kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml
