unit uPessoa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
type

  { TPessoas }

  TPessoa = class
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
    public
      constructor Create;
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

procedure TPessoa.SetBairro(AValue: String);
begin
  if FBairro=AValue then Exit;
  FBairro:=AValue;
end;

procedure TPessoa.SetCelular(AValue: String);
begin
  if FCelular=AValue then Exit;
  FCelular:=AValue;
end;

procedure TPessoa.SetCEP(AValue: String);
begin
  if FCEP=AValue then Exit;
  FCEP:=AValue;
end;

procedure TPessoa.SetCidade(AValue: String);
begin
  if FCidade=AValue then Exit;
  FCidade:=AValue;
end;

procedure TPessoa.SetCodigo(AValue: Integer);
begin
  if FCodigo=AValue then Exit;
  FCodigo:=AValue;
end;

procedure TPessoa.SetComplemento(AValue: String);
begin
  if FComplemento=AValue then Exit;
  FComplemento:=AValue;
end;

procedure TPessoa.SetCPF(AValue: String);
begin
  if FCPF=AValue then Exit;
  FCPF:=AValue;
end;

procedure TPessoa.SetDt_Cadastro(AValue: TDate);
begin
  if FDt_Cadastro=AValue then Exit;
  FDt_Cadastro:=AValue;
end;

procedure TPessoa.SetDt_Nascimento(AValue: TDate);
begin
  if FDt_Nascimento=AValue then Exit;
  FDt_Nascimento:=AValue;
end;

procedure TPessoa.SetEmail(AValue: String);
begin
  if FEmail=AValue then Exit;
  FEmail:=AValue;
end;

procedure TPessoa.SetEndereco(AValue: String);
begin
  if FEndereco=AValue then Exit;
  FEndereco:=AValue;
end;

procedure TPessoa.SetIdentidade(AValue: integer);
begin
  if FIdentidade=AValue then Exit;
  FIdentidade:=AValue;
end;

procedure TPessoa.SetNome(AValue: String);
begin
  if FNome=AValue then Exit;
  FNome:=AValue;
end;

procedure TPessoa.SetNumero(AValue: Integer);
begin
  if FNumero=AValue then Exit;
  FNumero:=AValue;
end;

procedure TPessoa.SetTelefone(AValue: String);
begin
  if FTelefone=AValue then Exit;
  FTelefone:=AValue;
end;

procedure TPessoa.Settipo(AValue: boolean);
begin
  if Ftipo=AValue then Exit;
  Ftipo:=AValue;
end;

procedure TPessoa.SetUF(AValue: String);
begin
  if FUF=AValue then Exit;
  FUF:=AValue;
end;

constructor TPessoa.Create;
begin

end;

end.

