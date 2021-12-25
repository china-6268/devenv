#!/usr/bin/bash

# 生成EncryptionConfig所需的加密KEY
export ENCRYPTION_KEY=$(head -c 32 /dev/urandom | base64)

# 集群各机器IP数组
export ALL_IPS=(172.20.10.10 172.20.10.11 172.20.10.12 172.20.10.13 172.20.10.14)
export MASTER_IPS=(172.20.10.10 172.20.10.11 172.20.10.12)
export NODE_IPS=(172.20.10.13 172.20.10.14)

# 集群各IP对应的主机名数组
export ALL_NAMES=(master01 master02 master03 node01 node02)
export MASTER_NAMES=(master01 master02 master03)
export NODE_NAMES=(node01 node02)

# ETCD集群服务地址列表
export ETCD_ENDPOINTS="https://172.20.10.10:2379,https://172.20.10.11:2379,https://172.20.10.12:2379"

# ETCD集群间通信的IP和端口
export ETCD_NODES="master01=https://172.20.10.10:2380,master02=https://172.20.10.11:2380,master03=https://172.20.10.12:2380"

# kube-apiserver的反向代理地址端口，kube-nginx实现
export KUBE_APISERVER="https://127.0.0.1:8443"

# 节点间互联网络接口名称
# export IFACE="eth0"
export IFACE="enp0s5" # 如果网络接口是eth0

# ETCD数据目录
export ETCD_DATA_DIR="/opt/k8s/etcd/data"

# ETCD WAL目录，建议是SSD磁盘分区，或者和ETCD_DATA_DIR不同的磁盘分区
export ETCD_WAL_DIR="/opt/k8s/etcd/wal"

# K8S各组件数据目录
export K8S_DIR="/opt/k8s/kubernetes"

## DOCKER_DIR和CONTAINERD_DIR二选一
# docker数据目录
export DOCKER_DIR="/opt/k8s/docker"

# containerd数据目录
export CONTAINERD_DIR="/opt/k8s/containerd"

## 以下参数一般不需要修改

# TLS Bootstrapping使用的Token，可以使用命令head -c 16 /dev/urandom | od -An -t x | tr -d ' ' 生成
BOOTSTRAP_TOKEN="020facb03dc72b75200ecf4c7bc79e44"

# 最好使用当前未用的网段来定义服务网段和Pod网段

# 服务网段，部署前路由不可达，部署后集群内路由可达
SERVICE_CIDR="10.254.0.0/16"

# Pod网段，建议/16段地址，部署前路由不可达，部署后集群内路由可达
CLUSTER_CIDR="172.30.0.0/16"




# 服务端口范围
export NODE_PORT_RANGE="30000-32767"

# kubernetes服务IP(一般是SERVICE_CIDR中第一个IP)
export CLUSTER_KUBERNETES_SVC_IP="10.254.0.1"

# 集群DNS服务IP(从SERVICE_CIDR中预分配)
export CLUSTER_DNS_SVC_IP="10.254.0.2"

# 集群DNS域名（末尾不带点号）
export CLUSTER_DNS_DOMAIN="cluster.local"

# 将二进制目录/opt/k8s/bin加到PATH中
export PATH=/opt/k8s/bin:$PATH
export PATH=/opt/k8s/kube-nginx/sbin:$PATH
