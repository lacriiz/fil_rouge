
using System;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
namespace fil_rouge
{
    public partial class Form1 : Form
    {
        string clinumero;
        bool insert = false;
        bool update = false;
        bool delete = false;
        bool cli_type;

        public Form1(string text)
        {
            InitializeComponent();
             
        }
        client newcli = new client();

        private void Form1_Load(object sender, EventArgs e)
        {
            

            try
            {
                clientDAO repo = new clientDAO();

                dataGridView1.DataSource = repo.Liste();
            }
            catch(System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }
        }

        private void textBoxNom_Leave(object sender, EventArgs e)
        {

        }

        private void textBoxTel_Leave(object sender, EventArgs e)
        {
            if (!Regex.IsMatch(textBoxTel.Text, "^[0-9]{10}$"))
            {

            }
            else
            {

            }
        }

        private void textBoxAdresse_Leave(object sender, EventArgs e)
        {
            
        }

        private void textBoxMail_Leave(object sender, EventArgs e)
        {

        }

        

        private void buttonAjout_Click(object sender, EventArgs e)
        {
            groupBox1.Enabled = true;
            insert = true;
            update = false;
            delete = false;
            
            textBoxNom.Text = "";
            textBoxTel.Text = "";
            textBoxAdresse.Text = "";
        }

        private void buttonValider_Click(object sender, EventArgs e)
        {
            if (insert == true)
            {
                //client newcli = new client
                //{
                newcli.cli_nom = textBoxNom.Text;
                newcli.cli_adresse = textBoxAdresse.Text;
                newcli.cli_contact = textBoxTel.Text;
                //newcli.cli_type = Convert.ToString(cli_type);
                //};

                clientDAO repo = new clientDAO();

                repo.Insert(newcli);

                dataGridView1.DataSource = repo.Liste();
            }
            if (update == true)
            {
                //client newcli = new client
                //{
                newcli.cli_numero = clinumero;
                newcli.cli_nom = textBoxNom.Text;
                newcli.cli_adresse = textBoxAdresse.Text;
                newcli.cli_contact = textBoxTel.Text;
                    //cli_type = Convert.ToString(cli_type),
                //};

                clientDAO repo = new clientDAO();

                repo.Update(newcli);

                dataGridView1.DataSource = repo.Liste();
            }
            if (delete == true)
            {

                newcli.cli_numero = clinumero;
                

                clientDAO repo = new clientDAO();

                repo.Delete(newcli);

                dataGridView1.DataSource = repo.Liste();
            }
        }

        private void buttonModif_Click(object sender, EventArgs e)
        {
            insert = false;
            delete = false;
            update = true;
            groupBox1.Enabled = true;
        }
             

        private void buttonSupp_Click(object sender, EventArgs e)
        {
            insert = false;
            update = false;
            delete = true;
           // groupBox1.Enabled = false;

        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            groupBox1.Enabled = true;
            if (dataGridView1.SelectedRows.Count>0)
            {
                newcli  = (client)dataGridView1.SelectedRows[0].DataBoundItem;
                clinumero=newcli.cli_numero;
                textBoxAdresse.Text = newcli.cli_adresse;
                textBoxNom.Text = newcli.cli_nom;
                textBoxTel.Text = newcli.cli_contact;
                   if(newcli.cli_type=="Particulier"||newcli.cli_type=="particulier")
                {
                    radioButton1.Checked = true;
                }
                   else
                {
                    radioButton2.Checked = true;
                }
            }
            
        }

        

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                cli_type = false;
                newcli.cli_type = "Particulier";
            }
            
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked)
            {
                cli_type = true;
                newcli.cli_type = "Professionnel";
            }
          
        }
    }
}
