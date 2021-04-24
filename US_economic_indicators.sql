select * from public.cpi_inflation;

select * from public.gdp;

select * from public.m3;

-- join the tables on year
SELECT cpi_inflation.date, dollar_value, inflation_rate, m3_rate
FROM cpi_inflation
INNER JOIN gdp
ON cpi_inflation.date = gdp.date
INNER JOIN m3
ON cpi_inflation.date = m3.date;


