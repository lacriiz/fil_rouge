using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace fil_rouge
{
    public partial class Form2 : Form
    {
        bool client = false;
        public string teste(string email)
        {
            string resultat;
            Regex re = new Regex("^[a-zA-Z0-9_.-]*[a-zA-Z0-9]{2,2}[@][a-zA-Z0-9]*[a-zA-Z0-9]{2,2}[.][a-zA-Z0-9]{2,2}[a-zA-Z0-9]*$");
            if (re.IsMatch(email))
            {
                resultat = "";
                this.Hide();
                Form1 fenetre = new Form1(textBox1.Text);
                fenetre.ShowDialog();
                this.Show();

                client = true;
            }
            else
            {
                resultat = " email incorrect";
            }
            return resultat;
        }
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            label3.Text = teste(textBox1.Text);
        }
    }
}
