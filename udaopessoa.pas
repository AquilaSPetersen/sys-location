unit uDAOPessoa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, uDm , uPessoa, ZStoredProcedure,ZDataset;

type
  TDAOPessoa=class
  private
    class function GetCodigo: Integer;
  public
    class function Create(aPessoa: TPessoa): Boolean;
    class function Read(aCodigo: Integer): TPessoa; overload;
    class function Read(aNome: string): TPessoa; overload;
    class function Update(aPessoa: TPessoa): Boolean;
    class function Delete(aPessoa: TPessoa): Boolean;
  end;

implementation

class function TDAOPessoa.GetCodigo: Integer;
var
  vProc: ZStoredProcedure.TZStoredProc ;
begin
  vProc := TZStoredProc.Create(nil);
  try
    vProc.Connection := dm.ZConnection1;
    vProc.StoredProcName := 'SP_GEN_PESSOA_ID';
    vProc.ExecProc;
    Result := vProc.ParamByName('ID').AsInteger;
  finally
    vProc.Free;
  end;
end;
 // read
class function TDAOPessoa.Read(aNome: string): TPessoa;
var
  vQry: ZDataset.TZQuery;
  vPessoa: TPessoa;
begin
  Result := nil;
  vQry := TZQuery.Create(nil);
  try
    vQry.Connection := dm.ZConnection1;
    vQry.SQL.Text:= 'select * from pessoa where nome like '+QuotedStr('%'+aNome+'%');
    vQry.Open;
    if not vQry.IsEmpty then
    begin
      Result := TPessoa.Create;
      vQry.First;
      while not vQry.Eof do
      begin
        vPessoa := TPessoa.Create;

        vPessoa.Codigo               := vQry.FieldByName('CODIGO').AsInteger;
        vPessoa.Nome                 := vQry.FieldByName('NOME').AsString;
        vPessoa.Telefone             := vQry.FieldByName('TELEFONE').AsString;
        vPessoa.CPF            := vQry.FieldByName('CPF').AsString;
        vPessoa.Endereco  := vQry.FieldByName('ENDERECO').AsString;
        vPessoa.Numero      := vQry.FieldByName('NUMERO').AsInteger;
        vPessoa.Complemento := vQry.FieldByName('COMPLEMENTO').AsString;
        vPessoa.Bairro      := vQry.FieldByName('BAIRRO').AsString;
        vPessoa.Cidade   := vQry.FieldByName('CIDADE').AsString;
        vPessoa.UF          := vQry.FieldByName('UF').AsString;
        vPessoa.CEP         := vQry.FieldByName('CEP').AsString;
        vPessoa.Celular              := vQry.FieldByName('CELULAR').AsString;
        vPessoa.Dt_Cadastro          := vQry.FieldByName('DT_CADASTRO').AsDateTime;
        vPessoa.Identidade          := vQry.FieldByName('IDENTIDADE').AsInteger;
        vPessoa.Dt_Nascimento          := vQry.FieldByName('IDENTIDADE').AsDateTime;
        vPessoa.Email          := vQry.FieldByName('EMAIL').AsString;
        vPessoa.tipo           :=vQry.FieldByName('TIPO').AsBoolean;
        Result.Create;
        vQry.Next;
      end;

    end;
  finally
    vQry.Free;
  end;
end;
 // Create
class function TDAOPessoa.Create(aPessoa: TPessoa): Boolean;
var
  vQry: TZQuery;
begin
  Result := False;
  vQry := TZQuery.Create(nil);
  try
    vQry.Connection := DM.ZConnection1;
    vQry.SQL.Text := 'INSERT INTO PESSOA (CODIGO, NOME, LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, MUNICIPIO, UF, CEP, CPF_CNPJ, TELEFONE, TIPO, CELULAR, POSSUIFIADOR, FIADOR )' +
                     'VALUES (:CODIGO, :NOME, :LOGRADOURO, :NUMERO, :COMPLEMENTO, :BAIRRO, :MUNICIPIO, :UF, :CEP, :CPF_CNPJ, :TELEFONE, :TIPO, :CELULAR, :POSSUIFIADOR, :FIADOR)';

    if aPessoa.Codigo <= 0 then
      aPessoa.Codigo := GetCodigo;
    vQry.ParamByName('CODIGO').AsInteger      := aPessoa.Codigo;
    vQry.ParamByName('NOME').AsString         := aPessoa.Nome;
    vQry.ParamByName('ENDERECO').AsString   := aPessoa.Endereco;
    vQry.ParamByName('NUMERO').AsInteger       := aPessoa.Numero;
    vQry.ParamByName('COMPLEMENTO').AsString  := aPessoa.Complemento;
    vQry.ParamByName('BAIRRO').AsString       := aPessoa.Bairro;
    vQry.ParamByName('CIDADE').AsString    := aPessoa.Cidade;
    vQry.ParamByName('UF').AsString           := aPessoa.UF;
    vQry.ParamByName('CEP').AsString          := aPessoa.CEP;
    vQry.ParamByName('CPF').AsString     := aPessoa.CPF;
    vQry.ParamByName('TELEFONE').AsString     := aPessoa.Telefone ;
    vQry.ParamByName('TIPO').AsBoolean         := aPessoa.tipo;
    vQry.ParamByName('CELULAR').AsString      := aPessoa.Celular;
    vQry.ParamByName('DT_CADASTRO').AsDate := aPessoa.Dt_Cadastro;
    vQry.ParamByName('DT_NASCIMENTO').AsDate := aPessoa.Dt_Nascimento;
    vQry.ParamByName('IDENTIDADE').Asinteger    := aPessoa.Identidade;
    vQry.ParamByName('EMAIL').AsString    :=aPessoa.Email;

    try
      vQry.ExecSQL;
      Result := True;
    except
      raise Exception.Create('Erro ao inserir Cliente');
    end;
  finally
    vQry.Free;
  end;
end;

class function TDAOPessoa.Read(aCodigo: Integer): TPessoa;
var
  vQry: TZQuery;
begin
  Result := nil;
  vQry := TZQuery.Create(nil);
  try
    vQry.Connection := DM.ZConnection1;
    vQry.SQL.Text := 'select * from pessoa where codigo = :codigo';
    vQry.ParamByName('CODIGO').AsInteger := aCodigo;
    vQry.Open;
    if not vQry.IsEmpty then
    begin
      Result := TPessoa.Create;
      Result.Codigo               := vQry.FieldByName('codigo').AsInteger;
      Result.Nome                 := vQry.FieldByName('nome').AsString;
      Result.Telefone             := vQry.FieldByName('telefone').AsString;
      Result.CPF                  := vQry.FieldByName('cpf').AsString;
      Result.tipo                 := vQry.FieldByName('tipo').AsBoolean;
      Result.email                := vQry.FieldByName('Email').AsString;
      Result.Dt_Cadastro          := vQry.FieldByName('Dt_Cadastro').AsDateTime;
      Result.Endereco             := vQry.FieldByName('Cidade').AsString;
      Result.Numero               := vQry.FieldByName('numero').AsInteger;
      Result.Complemento          := vQry.FieldByName('complemento').AsString;
      Result.Bairro               := vQry.FieldByName('bairro').AsString;
      Result.Cidade               := vQry.FieldByName('Cidade').AsString;
      Result.UF                   := vQry.FieldByName('uf').AsString;
      Result.CEP                  := vQry.FieldByName('cep').AsString;
      Result.Celular              := vQry.FieldByName('celular').AsString;
      Result.Dt_Nascimento        := vQry.FieldByName('dt_nascimento').AsDateTime;

    end;
  finally
    vQry.Free;
  end;
end;

class function TDAOPessoa.Update(aPessoa: TPessoa): Boolean;
var
  vQry: TZQuery;
begin
  Result := False;
  vQry := TZQuery.Create(nil);
  try
    vQry.Connection :=  DM.ZConnection1;
    vQry.SQL.Text :=  'update pessoa set nome = :nome, endereco = :endereco,' +
                      'numero =:numero,complemento =:complemento, bairro =:bairro,'+
                      'cidade = :cidade, uf = :uf, cep = :cep, cpf = :cpf,' +
                      'telefone = :telefone, tipo = :tipo, celular = :celular,'+
                      'dt_nascimento = :dt_nascimento, dt_Cadastro =:dt_Cadastro,'+
                      'email =:email, identidade =: identidade  where codigo = :codigo';
    vQry.ParamByName('NOME').AsString         := aPessoa.Nome;
    vQry.ParamByName('ENDERECO').AsString   := aPessoa.Endereco;
    vQry.ParamByName('NUMERO').AsInteger       := aPessoa.Numero;
    vQry.ParamByName('COMPLEMENTO').AsString  := aPessoa.Complemento;
    vQry.ParamByName('BAIRRO').AsString       := aPessoa.Bairro;
    vQry.ParamByName('CIDADE').AsString    := aPessoa.Cidade;
    vQry.ParamByName('UF').AsString           := aPessoa.UF;
    vQry.ParamByName('CEP').AsString          := aPessoa.CEP;
    vQry.ParamByName('CPF').AsString     := aPessoa.CPF;
    vQry.ParamByName('TELEFONE').AsString     := aPessoa.Telefone ;
    vQry.ParamByName('TIPO').AsBoolean         := aPessoa.tipo;
    vQry.ParamByName('CELULAR').AsString      := aPessoa.Celular;
    vQry.ParamByName('DT_CADASTRO').AsDate := aPessoa.Dt_Cadastro;
    vQry.ParamByName('DT_NASCIMENTO').AsDate := aPessoa.Dt_Nascimento;
    vQry.ParamByName('IDENTIDADE').Asinteger    := aPessoa.Identidade;
    vQry.ParamByName('EMAIL').AsString    :=aPessoa.Email;
    try
      vQry.ExecSQL;
      Result := True;
    except
      raise Exception.Create('Erro ao atualizar Cliente');
    end;
  finally
    vQry.Free;
  end;
end;

class function TDAOPessoa.Delete(aPessoa: TPessoa): Boolean;
var
  vQry: TZQuery;
begin
  Result := False;
  vQry := TZQuery.Create(nil);
  try
    vQry.Connection := DM.ZConnection1;
    vQry.SQL.Text := 'delete from pessoa where codigo = :codigo';
    vQry.ParamByName('codigo').AsInteger := aPessoa.Codigo;
    try
      vQry.ExecSQL;
      Result := True;
    except
      raise Exception.Create('Erro ao excluir cliente!');
    end;
  finally
    vQry.Free;
  end;
end;

end.
