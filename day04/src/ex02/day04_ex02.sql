/* Please create a Database View (with name v_generated_dates) which should 
be “store” generated dates from 1st to 31th of January 2022 in DATE type.
Don’t forget about order for the generated_date column. */

CREATE VIEW v_generated_dates AS
SELECT DATE(generated_date) AS generated_date
  FROM generate_series(
       '2022-01-01'::DATE,
       '2022-01-31'::DATE,
       '1 day'::INTERVAL)
       AS generated_date;