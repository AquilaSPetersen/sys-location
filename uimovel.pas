unit uImovel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
type

  { TImovel }

  TImovel = class
  private
    FCodigo: Integer;
    FNumero_Apartamento: integer;
    procedure SetCodigo(AValue: Integer);
    procedure SetNumero_Apartamento(AValue: integer);
    published
      property Codigo: Integer read FCodigo write SetCodigo;
      property Numero_Apartamento : integer read FNumero_Apartamento write SetNumero_Apartamento;
  end;

implementation

{ TImovel }

procedure TImovel.SetCodigo(AValue: Integer);
begin
  if FCodigo=AValue then Exit;
  FCodigo:=AValue;
end;

procedure TImovel.SetNumero_Apartamento(AValue: integer);
begin
  if FNumero_Apartamento=AValue then Exit;
  FNumero_Apartamento:=AValue;
end;

end.

