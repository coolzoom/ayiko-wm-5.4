-- transports should not be spawned by default
delete from gameobject where id in (select entry from gameobject_template where type = 15);
