-- bulk load barometric pressure data
\copy pressures(date,time,describe,air_temp,humid,pressure_sea_level) FROM 'data/pressures.csv' WITH (HEADER true, FORMAT csv)
