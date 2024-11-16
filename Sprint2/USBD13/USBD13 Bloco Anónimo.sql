--Test

DECLARE 
	myCursor 				SYS_REFCURSOR;
	partName				Part.Name%type;
	operationId				Operation.Id%type;
	operationDescription	Operation.Description%type;
	workstationTypeId		WorkstationType.Id%type;
	workstationTypeName		WorkstationType.Name%type;

BEGIN
	myCursor := fncGetOperationList('AS12945T22');
	LOOP
		FETCH myCursor INTO partName, operationId, operationDescription, workstationTypeId, workstationTypeName;
		EXIT WHEN myCursor%NOTFOUND;
		dbms_output.put_line('Product: ' || partName || ' | Operation: ' || operationId || '-' || operationDescription || ' | Workstation Type: ' || workstationTypeId || '-' || workstationTypeName);
	END LOOP;
	IF myCursor%ROWCOUNT = 0 THEN
		dbms_output.put_line('Product does not have Bill of Operations.');
	END IF;

EXCEPTION
	WHEN NO_DATA_FOUND THEN
		dbms_output.put_line('No product was found with that Id.');
END;