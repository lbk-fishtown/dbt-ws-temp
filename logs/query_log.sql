-- created_at: 2026-02-09T22:18:24.521255+00:00
-- finished_at: 2026-02-09T22:18:24.905258+00:00
-- elapsed: 384ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c24e5a-080a-d88a-0004-7d832e0a7dfe
-- desc: list_relations_in_parallel
SHOW OBJECTS IN SCHEMA "ANALYTICS"."DBT_LBK_FUSION_MIG" LIMIT 10000;
-- created_at: 2026-02-09T22:18:26.443288+00:00
-- finished_at: 2026-02-09T22:18:26.682722+00:00
-- elapsed: 239ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c24e5a-080a-d88a-0004-7d832e0a7e02
-- desc: Get table schema
describe table "ANALYTICS"."DBT_LBK_FUSION_MIG"."INC_ORDERS";
-- created_at: 2026-02-09T22:18:26.710451+00:00
-- finished_at: 2026-02-09T22:18:26.965841+00:00
-- elapsed: 255ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c24e5a-080a-da30-0004-7d832e0a5d66
-- desc: Get table schema
describe table "ANALYTICS"."DBT_LBK_FUSION_MIG"."MATERIALIZATION_INCREMENTAL";
