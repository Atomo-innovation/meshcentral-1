-- (Deprecated) This file used to create a view of MeshCentral devices (nodes).
-- You asked to remove that view, so this script now only drops it.
--
-- Notes:
-- - Devices are stored as type='node' in the 'main' table.
-- - Last connection info is stored as a separate document: type='lastconnect' with id = CONCAT('lc', <nodeId>).

USE meshcentral;

DROP VIEW IF EXISTS meshcentral_nodes;

-- Show remaining tables/views (you will see this when you run the file)
SHOW FULL TABLES IN meshcentral;

