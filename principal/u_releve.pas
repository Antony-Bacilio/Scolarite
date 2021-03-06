unit u_releve;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, u_liste,
  ExtCtrls;

type

  { Tf_releve }

  Tf_releve = class(TF_liste)
  procedure Init (affi : boolean);
  procedure affi_total;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  f_releve: Tf_releve;

implementation
{$R *.lfm}
uses u_feuille_style;

procedure Tf_releve.Init (affi : boolean);
begin
  style.panel_travail(pnl_titre);
  style.panel_travail(pnl_btn);
  style.panel_travail(pnl_affi);
  //style.label_titre (lbl_releve_total);
  style.grille (sg_liste);
  //sg_liste.Columns[2].Alignment:=taRightJustify;
  //lbl_amende_total.caption := '';
  pnl_btn_page.Hide;
  btn_line_detail.Hide;
  btn_line_edit.hide;
  btn_line_add.Hide;
  btn_line_delete.Hide;
  // boutons ajout/suppression sont uniquement affichés en mode ajout/mise à jour infraction
  pnl_btn_ligne.visible := NOT affi;
end;

procedure Tf_releve.affi_total;
begin
  //lbl_amende_total.caption := ' ' +floattostrF(f_amende_list.SumColumn('tarif'),FFFixed,7,2) +' €';
  // autre écriture avec l’indice de colonne pour la somme f_amende_list.SumColumn(2)
end;

end.

