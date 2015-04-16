# mesos-master
the master command for mesos container


### run the mesos master

- makse sure you have run the zookeeper. if not, you can use duffqiu/zookeeper image
- `# docker run -d --name=mesos-master --net=host --privileged -v /root/mesos_master/etc/mesos/zk:/etc/mesos/zk duffqiu/mesos-master  --ip=<mesos_ip> --quorum=1 --work_dir=/var/lib/mesos/master`
- note: you need to use --net=host --privileged, and you don't to expose the port because you have used --net=host
- note: if you don't want to mount the volume, you can use the zk parameter at the end of this command `--zk=zk://<zk_ip>:<zk_port>/mesos` to specify the zookeeper's url
- one tricky thing, when I use wrong parameter with "-zk", there is no error retrun


