unit uImovel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, uPessoa;
type

  { TImovel }

  TImovel = class
  private
    FBairro: String;
    FCEP: Integer;
    FCidade: String;
    FCodigo: Integer;
    FCodigo_Proprietario: TPessoa.Codigo;
    FLougradouro: String;
    FNome_Proprietario: TPessoa.Nome;
    FNumero_Apartamento: integer;
    FNumero_Lougradouro: Integer;
    procedure SetBairro(AValue: String);
    procedure SetCEP(AValue: Integer);
    procedure SetCidade(AValue: String);
    procedure SetCodigo(AValue: Integer);
    procedure SetCodigo_Proprietario(AValue: TPessoa.Codigo);
    procedure SetLougradouro(AValue: String);
    procedure SetNome_Proprietario(AValue: TPessoa.Nome);
    procedure SetNumero_Apartamento(AValue: integer);
    procedure SetNumero_Lougradouro(AValue: Integer);
    published
      property Codigo: Integer read FCodigo write SetCodigo;
      property Numero_Apartamento : integer read FNumero_Apartamento write SetNumero_Apartamento;
      property CEP                : Integer read FCEP write SetCEP;
      property Lougradouro        : String read FLougradouro write SetLougradouro;
      property Numero_Lougradouro : Integer read FNumero_Lougradouro write SetNumero_Lougradouro;
      property Bairro             : String read FBairro write SetBairro;
      property Cidade             : String read FCidade write SetCidade;
      property Codigo_Proprietario: TPessoa.Codigo read FCodigo_Proprietario write SetCodigo_Proprietario;
      property Nome_Proprietario  : TPessoa.Nome read FNome_Proprietario write SetNome_Proprietario;
  end;

implementation

{ TImovel }

procedure TImovel.SetCodigo(AValue: Integer);
begin
  if FCodigo=AValue then Exit;
  FCodigo:=AValue;
end;

procedure TImovel.SetBairro(AValue: String);
begin
  if FBairro=AValue then Exit;
  FBairro:=AValue;
end;

procedure TImovel.SetCEP(AValue: Integer);
begin
  if FCEP=AValue then Exit;
  FCEP:=AValue;
end;

procedure TImovel.SetCidade(AValue: String);
begin
  if FCidade=AValue then Exit;
  FCidade:=AValue;
end;

procedure TImovel.SetCodigo_Proprietario(AValue: TPessoa.Codigo);
begin
  if FCodigo_Proprietario=AValue then Exit;
  FCodigo_Proprietario:=AValue;
end;

procedure TImovel.SetLougradouro(AValue: String);
begin
  if FLougradouro=AValue then Exit;
  FLougradouro:=AValue;
end;

procedure TImovel.SetNome_Proprietario(AValue: TPessoa.Nome);
begin
  if FNome_Proprietario=AValue then Exit;
  FNome_Proprietario:=AValue;
end;

procedure TImovel.SetNumero_Apartamento(AValue: integer);
begin
  if FNumero_Apartamento=AValue then Exit;
  FNumero_Apartamento:=AValue;
end;

procedure TImovel.SetNumero_Lougradouro(AValue: Integer);
begin
  if FNumero_Lougradouro=AValue then Exit;
  FNumero_Lougradouro:=AValue;
end;

end.

