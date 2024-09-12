SELECT *
FROM netflix.content
WHERE content_id IN(
SELECT streams.Content_id
FROM (SELECT Customer_Id
FROM netflix.customer
WHERE Country = "United States") AS s
JOIN netflix.streams AS streams ON  s.Customer_Id = streams.Customer_id);