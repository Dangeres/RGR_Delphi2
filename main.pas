unit ButtonSee;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls,Windows, Messages, Graphics, Forms, Dialogs;

type
  SensButton = class(TButton)
  private
    Into:String;
    Leave:String;
    {function getteru:String;
    procedure setteru(Value:String);
    function getter:String;
    procedure setter(Value:String);}
    { Private declarations }
  protected
    procedure MouseEnter(Sender: TObject);     //did
    procedure MouseLeave(Sender: TObject);     //did
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override; // did
    { Public declarations }
  published
    property TextUnder: String read Into write Into;
    property TextLeave: String read Leave write Leave;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('SensButton', [SensButton]);
end;

constructor SensButton.create(AOwner:TComponent);
begin
  inherited create(AOwner);
  OnMouseEnter := MouseEnter;
  OnMouseLeave := MouseLeave;
  TextUnder := 'dont tuch me!';
  TextLeave := 'click to me!';
end;

{function SensButton.getteru:String;
begin
  Result := Into;
end;

procedure SensButton.setteru(Value:String);
begin
  Into := Value;
end;

function SensButton.getter;
begin
  Result := Leave;
end;

procedure SensButton.setter(Value:String);
begin
  Leave := Value;
end;  }

procedure SensButton.MouseEnter(Sender: TObject);
begin
  Caption := TextUnder;
end;

procedure SensButton.MouseLeave(Sender: TObject);
begin
  Caption := TextLeave;
end;
end.
