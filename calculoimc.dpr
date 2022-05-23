program calculoimc;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  peso, altura, imc: real;



begin
  try
    writeln('Digite o seu peso: ');
    readln(peso);
    writeln('Digite sua altura: ');
    readln(altura);
    imc := peso / (altura * altura);
    writeln('O seu IMC é de ', imc:0:2);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  readln;
end.
