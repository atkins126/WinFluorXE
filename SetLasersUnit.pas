unit SetLasersUnit;
// ---------------------------------------------------------
// Set intensity of lasers (Optoscan + Lasers light source
// ---------------------------------------------------------
// 10.03.09 Laser intensity can now be set from live image window
// 31.5.13 JD Only slider from available laser now visible
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ValidatedEdit, ExtCtrls;

type
  TSetLasersFrm = class(TForm)
    LasersGrp: TGroupBox;
    bOK: TButton;
    bCancel: TButton;
    panSource1: TPanel;
    Label31: TLabel;
    sbIntensity1: TScrollBar;
    edIntensity1: TValidatedEdit;
    panSource2: TPanel;
    Label1: TLabel;
    sbIntensity2: TScrollBar;
    edIntensity2: TValidatedEdit;
    panSource3: TPanel;
    Label2: TLabel;
    sbIntensity3: TScrollBar;
    edIntensity3: TValidatedEdit;
    panSource4: TPanel;
    Label3: TLabel;
    sbIntensity4: TScrollBar;
    edIntensity4: TValidatedEdit;
    panSource5: TPanel;
    Label4: TLabel;
    sbIntensity5: TScrollBar;
    edIntensity5: TValidatedEdit;
    panSource6: TPanel;
    Label5: TLabel;
    sbIntensity6: TScrollBar;
    edIntensity6: TValidatedEdit;
    panSource7: TPanel;
    Label6: TLabel;
    sbIntensity7: TScrollBar;
    edIntensity7: TValidatedEdit;
    panSource8: TPanel;
    Label7: TLabel;
    sbIntensity8: TScrollBar;
    edIntensity8: TValidatedEdit;
    procedure FormShow(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure sbIntensity1Change(Sender: TObject);
    procedure edIntensity1KeyPress(Sender: TObject; var Key: Char);
    procedure bCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetLasersFrm: TSetLasersFrm;

implementation

uses LightSourceUnit, Main, RecUnit, SnapUnit;

{$R *.dfm}

procedure TSetLasersFrm.FormShow(Sender: TObject);
// ---------------------------------------
// Initialise controls when form displayed
// ---------------------------------------
begin

     // Set visibility
     panSource1.Visible :=  LightSource.LaserAvailable[0] ;
     panSource2.Visible :=  LightSource.LaserAvailable[1] ;
     panSource3.Visible :=  LightSource.LaserAvailable[2] ;
     panSource4.Visible :=  LightSource.LaserAvailable[3] ;
     panSource5.Visible :=  LightSource.LaserAvailable[4] ;
     panSource6.Visible :=  LightSource.LaserAvailable[5] ;
     panSource7.Visible :=  LightSource.LaserAvailable[6] ;
     panSource8.Visible :=  LightSource.LaserAvailable[7] ;

     // Set sliders
     sbIntensity1.Position := Round(LightSource.LaserIntensity[0]) ;
     sbIntensity2.Position := Round(LightSource.LaserIntensity[1]) ;
     sbIntensity3.Position := Round(LightSource.LaserIntensity[2]) ;
     sbIntensity4.Position := Round(LightSource.LaserIntensity[3]) ;
     sbIntensity5.Position := Round(LightSource.LaserIntensity[4]) ;
     sbIntensity6.Position := Round(LightSource.LaserIntensity[5]) ;
     sbIntensity7.Position := Round(LightSource.LaserIntensity[6]) ;
     sbIntensity8.Position := Round(LightSource.LaserIntensity[7]) ;

     // Set % intensity
     edIntensity1.Value := sbIntensity1.Position ;
     edIntensity2.Value := sbIntensity2.Position ;
     edIntensity3.Value := sbIntensity3.Position ;
     edIntensity4.Value := sbIntensity4.Position ;
     edIntensity5.Value := sbIntensity5.Position ;
     edIntensity6.Value := sbIntensity6.Position ;
     edIntensity7.Value := sbIntensity7.Position ;
     edIntensity8.Value := sbIntensity8.Position ;

     ClientWidth := LasersGrp.Left + LasersGrp.Width + 5 ;
     ClientHeight := bOK.Top + bOK.Height + 5 ;

     end;


procedure TSetLasersFrm.bOKClick(Sender: TObject);
// -----------------
// OK button pressed
// -----------------
begin

     LightSource.LaserIntensity[0] := edIntensity1.Value ;
     LightSource.LaserIntensity[1] := edIntensity2.Value ;
     LightSource.LaserIntensity[2] := edIntensity3.Value ;
     LightSource.LaserIntensity[3] := edIntensity4.Value ;
     LightSource.LaserIntensity[4] := edIntensity5.Value ;
     LightSource.LaserIntensity[5] := edIntensity6.Value ;
     LightSource.LaserIntensity[6] := edIntensity7.Value ;
     LightSource.LaserIntensity[7] := edIntensity8.Value ;

     if Mainfrm.FormExists('RecordFrm') then begin
        // Restart recording
        if RecordFrm.CameraRunning then begin
           RecordFrm.StopCamera ;
           RecordFrm.StartCamera ;
           end ;
        end ;

     if Mainfrm.FormExists('SnapFrm') then begin
        // Restart recording
        if SnapFrm.CameraRunning then begin
           SnapFrm.StopCamera ;
           SnapFrm.StartCamera ;
           end ;
        end ;

     Hide ;

     end;

     
procedure TSetLasersFrm.sbIntensity1Change(Sender: TObject);
// --------------
// Slider changed
// --------------
begin
     edIntensity1.Value := sbIntensity1.Position ;
     edIntensity2.Value := sbIntensity2.Position ;
     edIntensity3.Value := sbIntensity3.Position ;
     edIntensity4.Value := sbIntensity4.Position ;
     edIntensity5.Value := sbIntensity5.Position ;
     edIntensity6.Value := sbIntensity6.Position ;
     edIntensity7.Value := sbIntensity7.Position ;
     edIntensity8.Value := sbIntensity8.Position ;
     end;


procedure TSetLasersFrm.edIntensity1KeyPress(Sender: TObject;
  var Key: Char);
// ----------------
// Edit box changed
// ----------------
begin
     if Key = #13 then begin
        sbIntensity1.Position := Round(edIntensity1.Value) ;
        sbIntensity2.Position := Round(edIntensity2.Value) ;
        sbIntensity3.Position := Round(edIntensity3.Value) ;
        sbIntensity4.Position := Round(edIntensity4.Value) ;
        sbIntensity5.Position := Round(edIntensity5.Value) ;
        sbIntensity6.Position := Round(edIntensity6.Value) ;
        sbIntensity7.Position := Round(edIntensity7.Value) ;
        sbIntensity8.Position := Round(edIntensity7.Value) ;
        end ;
     end;



procedure TSetLasersFrm.bCancelClick(Sender: TObject);
// ---------------------
// Cancel button pressed
// ---------------------
begin
     Hide ;
     end;

end.
