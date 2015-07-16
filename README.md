# Vagrant MySQL GTID Replication Demo
Demo of MySQL 5.6 with GTID replication, used mainly for me to get familiar with GTID's and their use in replication. 
Should just be able to checkout the code, change into db1 dir, run "vagrant up", wait, then chage into db2 and run "up" and voila! you have replication.

## Switching over master
Uses the "mysqlrpladmin" command from the "mysql-utilities" package to re-arrange the heirarchy:

Check health:
mysqlrpladmin --master=root:letmein@10.10.10.11 --discover-slaves-login=repl:slavepass --verbose health

Check which machine will be elected:
mysqlrpladmin --master=root:letmein@10.10.10.11 --discover-slaves-login=repl:slavepass --verbose elect

Check GTID's on all machines:
mysqlrpladmin --master=root:letmein@10.10.10.11 --discover-slaves-login=repl:slavepass --verbose gtid

Do a switchover of master:
mysqlrpladmin --master=root:letmein@10.10.10.11 --discover-slaves-login=repl:slavepass --new-master=root:letmein@10.10.10.12 --demote-master --verbose switchover
