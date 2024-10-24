SELECT Product.Name AS "Product", CustomerOrder.Id AS "Order Id", Entity.Name AS "Customer", CustomerOrderLine.quantity AS "Quantity", CustomerOrder.DateDelivery AS "Date of Delivery"
FROM Product
INNER JOIN CustomerOrderLine ON CustomerOrderLine.ProductId = Product.Id
INNER JOIN CustomerOrder ON CustomerOrder.Id = CustomerOrderLine.CustomerOrderId
INNER JOIN Entity ON Entity.Id = CustomerOrder.CustomerId
WHERE CustomerOrder.DateDelivery BETWEEN '23-SEP-24' AND '25-SEP-24'
ORDER BY Product.Name ,CustomerOrder.Id, Entity.Name