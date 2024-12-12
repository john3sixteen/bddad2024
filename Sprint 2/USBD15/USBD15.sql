CREATE or REPLACE FUNCTION fncWorkstationRegister(workstationId Workstation.Id%type,
    												idWorkstationType Workstation.WorkstationTypeId%type,
    												name Workstation.Name%type,
    												description Workstation.Description%type)
                                        RETURN sys_refcursor IS
                rfStock  sys_refcursor;
                dummy int;

            BEGIN
                SELECT count(*) INTO dummy 
            	FROM WorkstationType
                WHERE WorkstationType.Id = idWorkstationType;

                if dummy = 0 then
                    RAISE NO_DATA_FOUND;
                end if;
				
				--Workstation validation
				SELECT count(*) INTO dummy 
            	FROM Workstation workstation
                WHERE workstation.Id = workstationId;

                if dummy > 0 then
                    RAISE_APPLICATION_ERROR(-20001, 'There exists a Workstation with that Id already.');
                end if;

				INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(workstationId, idWorkstationType, name, description);

                open rfStock for
                    SELECT * 
                    	FROM  Workstation
                    WHERE id = workstationId;
                RETURN rfStock;
            END;