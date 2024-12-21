DECLARE
    PartCursor sys_refcursor;
    PartId Part.Id%TYPE;
	PartName Part.Name%TYPE;
	RStock ExternalPart.ReservedStock%TYPE;
	Supplier Procurement.SupplierId%TYPE;
            
BEGIN
	PartCursor := fncCheckReservedPartSupplier;

    LOOP
		FETCH PartCursor INTO PartId, PartName, RStock, Supplier;
        EXIT WHEN PartCursor%NOTFOUND;    
        dbms_output.put_line('Part Id: ' || PartId || ' Part Name: ' || PartName || ' Reserved Stock: ' || RStock || ' Supplier: ' || Supplier);
    END LOOP;

	IF PartCursor%ROWCOUNT = 0 THEN
        dbms_output.put_line('There are no Reserved Parts.');
	END IF;
END;