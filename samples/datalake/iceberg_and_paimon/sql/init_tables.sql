SET 'sql-client.execution.result-mode' = 'tableau';
SET 'execution.runtime-mode' = 'batch';

CREATE CATALOG `paimon` WITH (
    'type' = 'paimon',
    'warehouse' = 's3://warehouse/wh',
    's3.endpoint'='http://minio:9000',
    's3.access-key' = 'admin',
    's3.secret-key' = 'password',
    's3.region' = 'us-east-1'
);


create database if not exists paimon.db_paimon;

CREATE TABLE if not exists paimon.db_paimon.customer (
  `c_custkey` int,
  `c_name` varchar(25),
  `c_address` varchar(40),
  `c_nationkey` int,
  `c_phone` char(15),
  `c_acctbal` decimal(12,2),
  `c_mktsegment` char(10),
  `c_comment` varchar(117),
  PRIMARY KEY (c_custkey, c_nationkey) NOT ENFORCED
) PARTITIONED BY (c_nationkey) WITH (
  'deletion-vectors.enabled' = 'true',
  'bucket'='1'
);


insert into paimon.db_paimon.customer values (1,'sada', 'xxxzcz',1,'xxx',0.1,'zxzccc','xczxcasjdkasdalks');
