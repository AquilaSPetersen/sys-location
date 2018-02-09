unit uDm;

{$mode objfpc}{$H+}

interface

uses
  Classes, ZConnection, ZDataset, ZStoredProcedure, db;

type

  { Tdm }

  Tdm = class(TDataModule)
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZStoredProc1: TZStoredProc;
    procedure DataModuleCreate(Sender: TObject);
  private

  public

  end;

var
  dm: Tdm;

implementation

{$R *.lfm}

{ Tdm }

procedure Tdm.DataModuleCreate(Sender: TObject);
begin

end;

end.

