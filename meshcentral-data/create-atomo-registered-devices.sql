-- Creates a table to store Atomo device registration submissions.
-- Run this once, then query:
--   SELECT * FROM atomo_registered_devices;

USE meshcentral;

CREATE TABLE IF NOT EXISTS atomo_registered_devices (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  serial_number VARCHAR(64) NOT NULL,
  device_name VARCHAR(128) NOT NULL,
  organization_name VARCHAR(128) NOT NULL,
  email VARCHAR(256) NULL,
  phone VARCHAR(64) NULL,
  location VARCHAR(256) NULL,
  cloud_sync TINYINT(1) NOT NULL DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_atomo_serial (serial_number),
  KEY ix_atomo_created_at (created_at)
);

-- Optional cleanup: if you created the view earlier, remove it.
DROP VIEW IF EXISTS atomo_registered_devices_v;

-- Show registrations (you will see this when you run the file)
SELECT * FROM atomo_registered_devices;
