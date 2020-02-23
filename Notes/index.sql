CREATE INDEX index_name ON table_name (column_list);
-- CREATE INDEX abc ON test(txt);

CREATE TABLE test (
  id INTERGER PRIMARY KEY,
  txt VARCHAR(255),
  -- INDEX txt
);

EXPLAIN
  SELECT id, txt
  FROM text
  WHERE id = 1;

SHOW INDEXES FROM test;
