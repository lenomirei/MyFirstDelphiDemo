unit AccountUnit;

interface

type
  TActivateStatus = (NOTACTIVATED, ACTIVATED);
  TProxyType = (DEFAULTPROXY, NOPROXY, IEPROXY, CUSTOMPROXY);
  TAccount = record
    emailaddress : string;
    password : string;
    displayname : string;
    sendname : string;
    activatedstatus : TActivateStatus;
    timedcollect : Boolean;
    synccontacts : Boolean;
    synccalendar : Boolean;

    proxytype : TProxyType;
    end;
   TAccountArray = array[0..1] of TAccount;
   PAccount = ^TAccount;
implementation

end.
