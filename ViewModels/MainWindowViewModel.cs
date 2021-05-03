using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ImcPoidsMVVM.View;
using ImcPoidsMVVM.Models;
using System.ComponentModel;
using System.Windows.Input;
using System.Windows;
using System.Windows.Media;

namespace ImcPoidsMVVM.ViewModels
{
    class MainWindowViewModel : INotifyPropertyChanged
    {
        private SolidColorBrush backgroundCouleur = new SolidColorBrush(Colors.Black);

        public SolidColorBrush BackgroundCouleur
        {
            get { return backgroundCouleur; }
            set
            {
                if (backgroundCouleur == value)
                    return;

                backgroundCouleur = value;
                RaisePropertyChanged(nameof(backgroundCouleur));
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void RaisePropertyChanged(string name) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));

        private Sujet _sujet;

        public Sujet sujet { get => _sujet; set { _sujet = value; } }

        private int taillecm;
        private decimal imc; // indice de masse corporelle
        private decimal poids; // poids calculé selon la formule de Lorentz
        private decimal poidsIdeal; // poids calculé selon la formule de Devine
        private string categorie;
        public int Taillecm { get => taillecm; set { taillecm = value; OnPropertyChanged("Taillecm"); } }
        public decimal Imc { get => imc; set { imc = value; OnPropertyChanged("Imc"); } }
        public decimal Poids { get => poids; set { poids = value; OnPropertyChanged("Poids"); } }
        public decimal PoidsIdeal { get => poidsIdeal; set { poidsIdeal = value; OnPropertyChanged("PoidsIdeal"); } }
        public string Categorie { get => categorie; set { categorie = value; OnPropertyChanged("Categorie"); } }

        private void OnPropertyChanged(string v)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(v));
            }
        }

        public ICommand QuitterAppli { get; set; }
        public ICommand NouveauCalcul { get; set; }
        public ICommand btnFemmeClick { get; set; }
        public ICommand btnHommeClick { get; set; }



        public MainWindowViewModel()
        {
            QuitterAppli = new Command(QuitterAppliAction);
            NouveauCalcul = new Command(NouveauCalculAction);
            btnFemmeClick = new Command(btnFemmeClickAction);
            btnHommeClick = new Command(btnHommeClickAction);
        }

        private bool verifSaisie()
        {
            bool saisieOk = true;
            try
            {
                int tailleSujet = Taillecm;
                int poidsSujet = Convert.ToInt16(Poids);
                if ((tailleSujet < 65) || (tailleSujet > 220))
                {
                    taillecm = 0;
                    saisieOk = false;
                }
                if ((poidsSujet < 20) || (poidsSujet > 180))
                {
                    poids = 0;
                    saisieOk = false;
                }
            }
            catch
            {
                saisieOk = false;
            }
            return saisieOk;
        }

        private void btnFemmeClickAction(object sender)
        {
            bool saisieOk;
            bool sexe = true;
            saisieOk = verifSaisie();
            if (saisieOk == true)
            {
                // calcul
                CalculEtaffichage(sexe);
            }
        }

        private void btnHommeClickAction(object sender)
        {
            bool saisieOk;
            bool sexe = false;
            saisieOk = verifSaisie();
            if (saisieOk == true)
            {
                // calcul
                CalculEtaffichage(sexe);
            }
        }

        private void CalculEtaffichage(bool sexe)
        {
            // céation du sujet
            Sujet monSujet = new Sujet();
            monSujet.Sexe = sexe;
            monSujet.Taillecm = Taillecm;
            monSujet.Poids = Convert.ToDecimal(poids);
            CalculIMCPoids mesCalculs = new CalculIMCPoids(monSujet);
            mesCalculs.CalculeIMC();
            if (monSujet.Sexe == true)
            {
                mesCalculs.PoidsIdealF();
            }
            else
            {
                mesCalculs.PoidsIdealH();
            }
            Imc = monSujet.Imc;
            PoidsIdeal = monSujet.PoidsIdeal;

            // récup catégorie
            mesCalculs.Categorie();
            Categorie = monSujet.Categorie;


            /*
            if (BackgroundCouleur.Color == Colors.Red)
                BackgroundCouleur = new SolidColorBrush(Colors.Blue);
            else
                BackgroundCouleur = new SolidColorBrush(Colors.Blue);
            */


            if (monSujet.Categorie == "Maigreur Sévère")
            {
                BackgroundCouleur = new SolidColorBrush(Colors.Red);
            }
            if (monSujet.Categorie == "Maigreur")
            {
                BackgroundCouleur = new SolidColorBrush(Colors.Orange);
            }

            if (monSujet.Categorie == "Normal")
            {
                BackgroundCouleur = new SolidColorBrush(Colors.Green);
            }

            if (monSujet.Categorie == "Surcharge")
            {
                BackgroundCouleur = new SolidColorBrush(Colors.GreenYellow);
            }

            if (monSujet.Categorie == "Obésité")
            {
                BackgroundCouleur = new SolidColorBrush(Colors.Yellow);
            }

            if (monSujet.Categorie == "Obésité Modérée")
            {
                BackgroundCouleur = new SolidColorBrush(Colors.Orange);
            }

            if ((monSujet.Categorie == "Obésité Morbide"))
            {
                BackgroundCouleur = new SolidColorBrush(Colors.Red);
            }

        }

        private void QuitterAppliAction(object sender)
        {
            Application.Current.Shutdown();
        }

            private void NouveauCalculAction(object sender)
        {
            Poids = 0;
            Taillecm = 0;
            Imc = 0;
            PoidsIdeal = 0;
            Categorie = "";
        }
    }
}
