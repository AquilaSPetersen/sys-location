unit uDm;

{$mode objfpc}{$H+}

interface

uses
  Classes, ZConnection, ZDataset, db;

type

  { Tdm }

  Tdm = class(TDataModule)
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
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

