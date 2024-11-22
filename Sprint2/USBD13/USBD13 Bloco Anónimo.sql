--Test

DECLARE 
		
	myCursor 				SYS_REFCURSOR;
	myCursor2 				SYS_REFCURSOR;
	subProduct				Part.Id%type;
	partName				Part.Name%type;
	operationId				Operation.Id%type;
	operationDescription	OperationType.Description%type;
	partInputName			Part.Name%type
	partOutputName			Part.Name%type
	workstationTypeId		WorkstationType.Id%type;
	workstationTypeName		WorkstationType.Name%type;

BEGIN
	myCursor := fncGetOperationList('AS12945T22');
	LOOP
		FETCH myCursor INTO partName, operationId, operationDescription, workstationTypeId, workstationTypeName;
		EXIT WHEN myCursor%NOTFOUND;
		dbms_output.put_line('Product: ' || partName || ' | Operation: ' || operationId || '-' || operationDescription || ' | Input: ' || partInputName || ' | Output: ' || partOutputName ||' | Workstation Type: ' || workstationTypeId || '-' || workstationTypeName);
		myCursor2 := fncIsProduct(partName);
		IF myCursor2%ROWCOUNT > 0 NULL THEN
			FETCH myCursor2 INTO subProduct;
			myCursor2 := fncGetOperationList(subProduct);
			LOOP
				FETCH myCursor2 INTO partName, operationId, operationDescription, workstationTypeId, workstationTypeName;
				EXIT WHEN myCursor2%NOTFOUND;
				dbms_output.put_line('Product: ' || partName || ' | Operation: ' || operationId || '-' || operationDescription || ' | Input: ' || partInputName || ' | Output: ' || partOutputName ||' | Workstation Type: ' || workstationTypeId || '-' || workstationTypeName);
			END LOOP;
		END IF
	END LOOP;
	IF myCursor%ROWCOUNT = 0 THEN
		dbms_output.put_line('Product does not have Bill of Operations.');
	END IF;

EXCEPTION
	WHEN NO_DATA_FOUND THEN
		dbms_output.put_line('No product was found with that Id.');
END;