SELECT ROUND(((1-(CAST(lidesired-lipurchased AS NUMERIC)/lidesired))*100), 2) || '%' AS "Fulfillment" FROM listitems;
-- CAST ( expression AS type )
-- expression::type
-- conforms to sql; historical postgres usage