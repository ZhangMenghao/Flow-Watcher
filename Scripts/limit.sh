flowLimit=2000
sudo ovs-vsctl set bridge s1 protocols=OpenFlow14

sudo ovs-vsctl -- --id=@s10 create Flow_Table flow_limit=$flowLimit overflow_policy=evict -- set Bridge s1 flow_tables:0=@s10
