-- Vaida Blomquist's sql
-- Finds sales value greater than 300000 and acres poly less than 1
CREATE OR REPLACE VIEW student.v_parcels_final AS
SELECT
  defaultdb.enterprise.parcels_core.pin,
	defaultdb.enterprise.parcels_core.acres_poly,
	defaultdb.enterprise.parcels_core.use1_desc,
	defaultdb.enterprise.parcel_sales.sale_date,
	defaultdb.enterprise.parcel_sales.sale_value,
	defaultdb.enterprise.parcels_core.shape
FROM
	defaultdb.enterprise.parcels_core
LEFT JOIN
	defaultdb.enterprise.parcel_sales
ON defaultdb.enterprise.parcel_sales.pin = defaultdb.enterprise.parcels_core.pin
WHERE
	defaultdb.enterprise.parcel_sales.sale_value > 300000
AND
	defaultdb.enterprise.parcels_core.acres_poly < 1;
