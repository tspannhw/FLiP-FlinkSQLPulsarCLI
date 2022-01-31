CREATE TABLE jetsoniot3
(
  `id` STRING, uuid STRING, ir STRING,
  `end` STRING, lux STRING, gputemp STRING, 
  cputemp STRING, `te` STRING, systemtime STRING, hum STRING,
 memory STRING, gas STRING, pressure STRING, 
 `host` STRING, diskusage STRING, ipaddress STRING, macaddress STRING, 
  gputempf STRING, host_name STRING, camera STRING, filename STRING, 
    `runtime` STRING, cpu STRING,cputempf STRING, imageinput STRING,
    `networktime` STRING, top1 STRING, top1pct STRING, 
  publishTime TIMESTAMP(3) METADATA,
  WATERMARK FOR publishTime AS publishTime - INTERVAL '5' SECOND
) WITH (
  'topic' = 'persistent://public/default/iotjetsonjson',
  'value.format' = 'json',
  'scan.startup.mode' = 'earliest'
)
