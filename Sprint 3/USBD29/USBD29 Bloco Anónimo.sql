--USBD29 As a Factory Manager, I want to know the workstation types not used in any BOO.
--Anonymous block

DECLARE
    refCursor 			sys_refcursor;
    WorkstationTypeId 	WorkstationType.Id%TYPE;
	WorkstationTypeName WorkstationType.Name%TYPE;
BEGIN
	refCursor := fncWorkstationTypesNotUsedInAnyBoo;

    LOOP
		FETCH refCursor INTO WorkstationTypeId, WorkstationTypeName;
        EXIT WHEN refCursor%NOTFOUND;    
        dbms_output.put_line('Workstation Type Id: ' || WorkstationTypeId || ' | Workstation Type Name: ' || WorkstationTypeName);
    END LOOP;

	IF refCursor%ROWCOUNT = 0 THEN
        dbms_output.put_line('Every Workstation Type is used in a BOO.');
	END IF;
END;