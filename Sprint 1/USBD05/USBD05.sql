SELECT Entity.Name AS "Customer", Product.Name AS "Product", ProductionOrder.quantity AS "Quantity", CustomerOrder.DateDelivery AS "Date of Delivery"
FROM Product
INNER JOIN ProductionOrder ON ProductionOrder.ProductId = Product.Id
INNER JOIN CustomerOrder ON CustomerOrder.Id = ProductionOrder.OrderId
INNER JOIN Entity ON Entity.Id = CustomerOrder.CustomerId
WHERE CustomerOrder.DateDelivery BETWEEN '23-SEP-24' AND '25-SEP-24'
ORDER BY CustomerOrder.DateDelivery, Entity.Name