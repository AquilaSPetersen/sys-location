unit uPessoa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
type

  { TPessoas }

  TPessoas = class
  private
    FBairro         : String;
    FCelular        : String;
    FCEP            : String;
    FCidade         : String;
    FCodigo         : Integer;
    FComplemento    : String;
    FCPF            : String;
    FDt_Cadastro    : TDate;
    FDt_Nascimento  : TDate;
    FEmail          : String;
    FEndereco       : String;
    FIdentidade     : integer;
    FNome           : String;
    FNumero         : Integer;
    FTelefone       : String;
    Ftipo           : boolean;
    FUF             : String;
    procedure SetBairro(AValue: String);
    procedure SetCelular(AValue: String);
    procedure SetCEP(AValue: String);
    procedure SetCidade(AValue: String);
    procedure SetCodigo(AValue: Integer);
    procedure SetComplemento(AValue: String);
    procedure SetCPF(AValue: String);
    procedure SetDt_Cadastro(AValue: TDate);
    procedure SetDt_Nascimento(AValue: TDate);
    procedure SetEmail(AValue: String);
    procedure SetEndereco(AValue: String);
    procedure SetIdentidade(AValue: integer);
    procedure SetNome(AValue: String);
    procedure SetNumero(AValue: Integer);
    procedure SetTelefone(AValue: String);
    procedure Settipo(AValue: boolean);
    procedure SetUF(AValue: String);
    published
      property Codigo               :Integer read FCodigo write SetCodigo;
      property Nome                 :String read FNome write SetNome;
      property CPF                  :String read FCPF write SetCPF;
      property Identidade           :Integer read FIdentidade write SetIdentidade;
      property Telefone             :String read FTelefone write SetTelefone;
      property Celular              :String read FCelular write SetCelular;
      property Email                :String read FEmail write SetEmail;
      property Endereco             :String read FEndereco write SetEndereco;
      property Numero               :Integer read FNumero write SetNumero;
      property CEP                  :String read FCEP write SetCEP;
      property Complemento          :String read FComplemento write SetComplemento;
      property Bairro               :String read FBairro write SetBairro;
      property Cidade               :String read FCidade write SetCidade;
      property UF                   :String read FUF write SetUF;
      property Dt_Cadastro          :TDate read FDt_Cadastro write SetDt_Cadastro;
      property Dt_Nascimento        :TDate read FDt_Nascimento write SetDt_Nascimento;
      property  tipo                :boolean read Ftipo write Settipo;

  end;

implementation

{ TPessoas }

procedure TPessoas.SetBairro(AValue: String);
begin
  if FBairro=AValue then Exit;
  FBairro:=AValue;
end;

procedure TPessoas.SetCelular(AValue: String);
begin
  if FCelular=AValue then Exit;
  FCelular:=AValue;
end;

procedure TPessoas.SetCEP(AValue: String);
begin
  if FCEP=AValue then Exit;
  FCEP:=AValue;
end;

procedure TPessoas.SetCidade(AValue: String);
begin
  if FCidade=AValue then Exit;
  FCidade:=AValue;
end;

procedure TPessoas.SetCodigo(AValue: Integer);
begin
  if FCodigo=AValue then Exit;
  FCodigo:=AValue;
end;

procedure TPessoas.SetComplemento(AValue: String);
begin
  if FComplemento=AValue then Exit;
  FComplemento:=AValue;
end;

procedure TPessoas.SetCPF(AValue: String);
begin
  if FCPF=AValue then Exit;
  FCPF:=AValue;
end;

procedure TPessoas.SetDt_Cadastro(AValue: TDate);
begin
  if FDt_Cadastro=AValue then Exit;
  FDt_Cadastro:=AValue;
end;

procedure TPessoas.SetDt_Nascimento(AValue: TDate);
begin
  if FDt_Nascimento=AValue then Exit;
  FDt_Nascimento:=AValue;
end;

procedure TPessoas.SetEmail(AValue: String);
begin
  if FEmail=AValue then Exit;
  FEmail:=AValue;
end;

procedure TPessoas.SetEndereco(AValue: String);
begin
  if FEndereco=AValue then Exit;
  FEndereco:=AValue;
end;

procedure TPessoas.SetIdentidade(AValue: integer);
begin
  if FIdentidade=AValue then Exit;
  FIdentidade:=AValue;
end;

procedure TPessoas.SetNome(AValue: String);
begin
  if FNome=AValue then Exit;
  FNome:=AValue;
end;

procedure TPessoas.SetNumero(AValue: Integer);
begin
  if FNumero=AValue then Exit;
  FNumero:=AValue;
end;

procedure TPessoas.SetTelefone(AValue: String);
begin
  if FTelefone=AValue then Exit;
  FTelefone:=AValue;
end;

procedure TPessoas.Settipo(AValue: boolean);
begin
  if Ftipo=AValue then Exit;
  Ftipo:=AValue;
end;

procedure TPessoas.SetUF(AValue: String);
begin
  if FUF=AValue then Exit;
  FUF:=AValue;
end;

end.

