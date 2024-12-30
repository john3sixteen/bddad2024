CREATE OR REPLACE PROCEDURE UpdateReservedStock (
    partsQuantity IN SYS_REFCURSOR
) IS
    partNum ExternalPart.Id%Type;
	partQuantity OperationInput.Quantity%Type;
BEGIN
		LOOP
		FETCH partsQuantity into partNum, partQuantity;
		EXIT WHEN partsQuantity%NOTFOUND;
			
			UPDATE ExternalPart
			SET ReservedStock = ReservedStock + partQuantity
			WHERE Id = partNum;
	
		END LOOP;
		
EXCEPTION
    WHEN OTHERS THEN
		RAISE;
END;