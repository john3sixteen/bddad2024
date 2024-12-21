CREATE OR REPLACE FUNCTION fncCheckReservedPartSupplier 
RETURN sys_refcursor IS
    partCursor sys_refcursor;
	
BEGIN
	OPEN partCursor FOR
		SELECT Part.Id, Part.Name, ExternalPart.ReservedStock, Procurement.SupplierId
			FROM Procurement
			INNER JOIN ExternalPart ON ExternalPart.Id = Procurement.ExternalPartId
			INNER JOIN Part ON Part.Id = ExternalPart.Id
			WHERE ExternalPart.ReservedStock > 0;
			
	RETURN partCursor;
END;
