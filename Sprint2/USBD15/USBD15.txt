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

				INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(workstationId, idWorkstationType, name, description);

                open rfStock for
                    SELECT * 
                    	FROM  Workstation
                    WHERE id = workstationId;
                RETURN rfStock;
            END;