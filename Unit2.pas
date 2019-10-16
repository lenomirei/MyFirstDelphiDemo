unit AccountUnit;

interface

type
  TActivateStatus = (NotActivated, Activated);
  TAccount = record
    emailaddress : string;
    password : string;
    displayname : string;
    sendname : string;
    activatedstatus : TActivateStatus;
    timedcollect : Boolean;
    synccontacts : Boolean;
    synccalendar : Boolean;
    end;

implementation

end.
