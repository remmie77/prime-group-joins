-- Get all customers and their addresses.
SELECT * FROM "addresses"
JOIN "customers" ON "customers"."id" = "addresses"."customer_id";
-- GET all orders and their line items.
SELECT * FROM "orders"
JOIN "line_items" ON "orders"."id" = "line_items"."order_id";
-- Which warehouses have Cheetos?
SELECT *
FROM "warehouse_product"
JOIN "warehouse" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "products"."description" ILIKE 'cheetos';
-- Which warehouses have diet pepsi?
SELECT *
FROM "warehouse_product"
JOIN "warehouse" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "products"."description" ILIKE 'diet pepsi';
--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT "customers", "quantity"
FROM "line_items"
JOIN "orders" ON "orders"."id" = "line_items"."order_id"
JOIN "addresses" ON "addresses"."id" = "orders"."address_id"
JOIN "customers" ON "customers"."id" = "addresses"."customer_id";
--How many customers do we have?
SELECT count(*) FROM "customers";
--How many products do we carry?
SELECT count(*) FROM "products";
