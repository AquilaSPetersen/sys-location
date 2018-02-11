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
<<<<<<< HEAD
    FCodigo_Proprietario: TPessoa.Codigo;
    FLougradouro: String;
    FNome_Proprietario: TPessoa.Nome;
=======
    FCodigo_proprietario: TPessoa;
    FLougradouro: String;
    FNome_proprietario: TPessoa;
>>>>>>> 75ddd3b8948ee7a62e88f72ed61f78a768892c54
    FNumero_Apartamento: integer;
    FNumero_Lougradouro: Integer;
    procedure SetBairro(AValue: String);
    procedure SetCEP(AValue: Integer);
    procedure SetCidade(AValue: String);
    procedure SetCodigo(AValue: Integer);
<<<<<<< HEAD
    procedure SetCodigo_Proprietario(AValue: TPessoa.Codigo);
    procedure SetLougradouro(AValue: String);
    procedure SetNome_Proprietario(AValue: TPessoa.Nome);
=======
    procedure SetCodigo_proprietario(AValue: TPessoa);
    procedure SetLougradouro(AValue: String);
    procedure SetNome_proprietario(AValue: TPessoa);
>>>>>>> 75ddd3b8948ee7a62e88f72ed61f78a768892c54
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
<<<<<<< HEAD
      property Codigo_Proprietario: TPessoa.Codigo read FCodigo_Proprietario write SetCodigo_Proprietario;
      property Nome_Proprietario  : TPessoa.Nome read FNome_Proprietario write SetNome_Proprietario;
=======
      property Nome_proprietario  :TPessoa read FNome_proprietario write SetNome_proprietario;
      property Codigo_proprietario :TPessoa read FCodigo_proprietario write SetCodigo_proprietario;
>>>>>>> 75ddd3b8948ee7a62e88f72ed61f78a768892c54
  end;

implementation

{ TImovel }

procedure TImovel.SetCodigo(AValue: Integer);
begin
  if FCodigo=AValue then Exit;
  FCodigo:=AValue;
end;

<<<<<<< HEAD
=======
procedure TImovel.SetCodigo_proprietario(AValue: TPessoa);
begin
  if FCodigo_proprietario=AValue then Exit;
  FCodigo_proprietario:=AValue;
end;

>>>>>>> 75ddd3b8948ee7a62e88f72ed61f78a768892c54
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

<<<<<<< HEAD
procedure TImovel.SetCodigo_Proprietario(AValue: TPessoa.Codigo);
begin
  if FCodigo_Proprietario=AValue then Exit;
  FCodigo_Proprietario:=AValue;
end;

=======
>>>>>>> 75ddd3b8948ee7a62e88f72ed61f78a768892c54
procedure TImovel.SetLougradouro(AValue: String);
begin
  if FLougradouro=AValue then Exit;
  FLougradouro:=AValue;
end;

<<<<<<< HEAD
procedure TImovel.SetNome_Proprietario(AValue: TPessoa.Nome);
begin
  if FNome_Proprietario=AValue then Exit;
  FNome_Proprietario:=AValue;
=======
procedure TImovel.SetNome_proprietario(AValue: TPessoa);
begin
  if FNome_proprietario=AValue then Exit;
  FNome_proprietario:=AValue;
>>>>>>> 75ddd3b8948ee7a62e88f72ed61f78a768892c54
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

