SELECT *
FROM netflix.invoice
WHERE Customer_id IN(
SELECT streams.Customer_Id
FROM (SELECT Customer_Id
FROM netflix.customer
WHERE Country = "United States") AS s
JOIN netflix.streams AS streams ON  s.Customer_Id = streams.Customer_id);