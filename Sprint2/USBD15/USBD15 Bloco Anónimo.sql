DECLARE
                rfc SYS_REFCURSOR;
                workstationId Workstation.Id%type;
    			idWorkstationType Workstation.WorkstationTypeId%type;
    			name Workstation.Name%type;
    			description Workstation.Description%type;
            
            BEGIN
                rfc := fncWorkstationRegister(1991, 'A4588', 'Press 04', '160-1000t precison cold forging press');

                LOOP
                    FETCH rfc INTO workstationId, idWorkstationType, name, description;
                    EXIT WHEN rfc%NOTFOUND;    
                    dbms_output.put_line('Workstation created with the following data: ' || workstationId || ' - ' || idWorkstationType || ' - ' || name || ' - ' || description);
                END LOOP;

				IF rfc%ROWCOUNT = 0 THEN
                    dbms_output.put_line('Workstation not created');
				END IF;

            EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    dbms_output.put_line('Workstation Type does not exist');
            END;
