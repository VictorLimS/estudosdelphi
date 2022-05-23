program notasaluno;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  nota1, nota2, nota3: real;
  media: real;



begin
  try
    writeln('Digite a primeira nota do aluno: ');
    readln(nota1);
    writeln('Digite a segunda nota do aluno: ');
    readln(nota2);
    writeln('Digite a terceira nota do aluno: ');
    readln(nota3);

    media := (nota1+nota2+nota3)/3;

    if media >= 7 then
    begin
      writeln('As notas do aluno foram ', nota1:0:2, ', ', nota2:0:2, ' e ', nota3:0:2);
      writeln('A média do aluno é ', media:0:2, ' e o aluno foi aprovado!');
    end
    else
    begin
      writeln('As notas do aluno foram ', nota1:0:2, ', ', nota2:0:2, ' e ', nota3:0:2);
      writeln('A média do aluno é ', media:0:2, ' e o aluno foi reprovado!');
    end;



  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  readln;
end.
