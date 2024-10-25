SELECT productionOrder.ID 	AS "Production Order Id"
    , product.Name			AS "Product"
    , component.Name   		AS "Component"
    , rawMaterial.Name		AS "Raw Material"
    , partBOM.Quantity		AS "Quantity of Component\Raw Material"
FROM ProductionOrder productionOrder
INNER JOIN CustomerOrderLine 	customerOrderLine	ON productionOrder.CustomerOrderId 	= customerOrderLine.CustomerOrderId AND productionOrder.ProductId = customerOrderLine.ProductId
INNER JOIN Product				product				ON customerOrderLine.ProductId		= product.Id  
INNER JOIN BOM					bom					ON product.Id						= bom.ProductId
INNER JOIN PartBom				partBom				ON bom.Id							= partBom.BOMId
INNER JOIN Part					part				ON partBom.PartId					= part.Id
LEFT JOIN  Component			component			ON part.Id							= component.Id
LEFT JOIN  RawMaterial			rawMaterial			ON part.Id							= rawMaterial.Id
WHERE 1 = 1
AND productionOrder.Id = 1
ORDER BY product.Name
        ,component.Name
    	,rawMaterial.Name