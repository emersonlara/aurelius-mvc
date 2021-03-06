unit ConnectionModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.DApt, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  //
  Aurelius.Drivers.Interfaces, Aurelius.SQL.Firebird, Aurelius.Schema.Firebird, Aurelius.Drivers.FireDac;

type
  TFireDacFirebirdConnection = class(TDataModule)
    Connection: TFDConnection;
  private
  public
    class function CreateConnection: IDBConnection;
    class function CreateFactory: IDBConnectionFactory;
    
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses 
  Aurelius.Drivers.Base;

{$R *.dfm}

class function TFireDacFirebirdConnection.CreateConnection: IDBConnection;
var 
  DataModule: TFireDacFirebirdConnection; 
begin 
  DataModule := TFireDacFirebirdConnection.Create(nil); 
  Result := TFireDacConnectionAdapter.Create(DataModule.Connection, 'Firebird', DataModule); 
end;

class function TFireDacFirebirdConnection.CreateFactory: IDBConnectionFactory;
begin
  Result := TDBConnectionFactory.Create(
    function: IDBConnection
    begin
      Result := CreateConnection;
    end
  );
end;



end.
