# mesos-master
the master command for mesos container


### run the mesos master

- makse sure you have run the zookeeper. if not, you can use duffqiu/zookeeper image
- `# docker run -d --name=mesos-masterduffqiu/mesos-master --zk=zk://<zk_ip>:<zk_port>/mesos --quorum=1 --work_dir=/var/lib/mesos/master --hostname=<mesos master name>`
- all parameters refer to offical mesos master configuration
- one tricky thing, when I use wrong parameter with "-zk", there is no error retrun
- don't start the slave, and use the zookeeper client to check there is a znode "mesos" under the / path in zookeeper
- don't use the `--ip` parameter because it is set by the script auto


