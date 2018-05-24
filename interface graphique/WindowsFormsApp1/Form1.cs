using class ClientDAO;
using System;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace fil_rouge
{
    public partial class Form1 : Form
    {
        string cli_numero;
        bool insert = false;
        bool update = false;
        bool cli_type;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                ClientDAO repo = new ClientDAO();

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
            //if (!Regex.IsMatch(textBoxTel.Text, "^[0-9]{10}$"))
            //{

            //    fatalerror.SetError(textBoxTel, "Entrez un numéro de téléphone valide");
            //}
            //else
            //{
            //    fatalerror.SetError(textBoxTel, "");
            //}
        }

        private void textBoxAdresse_Leave(object sender, EventArgs e)
        {
            //if (!Regex.IsMatch(textBoxAdresse.Text, "[0-9]{1,3}(?:(?:[,. ]){1}[-a-zA-Zàâäéèêëïîôöùûüç]+)"))
            //{

            //    fatalerror.SetError(textBoxAdresse, "Entrez une adresse valide");
            //}
            //else
            //{
            //    fatalerror.SetError(textBoxAdresse, "");
            //}
        }

        private void textBoxMail_Leave(object sender, EventArgs e)
        {

        }

        private void checkedListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (checkedListBox1.SelectedIndex == 0)
            {
                cli_type = false;
            }
            else
            {
                cli_type = true;
            }
        }

        private void buttonAjout_Click(object sender, EventArgs e)
        {
            groupBox1.Enabled = true;
            insert = true;
            update = false;
            textBoxNom.Text = "";
            textBoxTel.Text = "";
            textBoxAdresse.Text = "";
        }

        private void buttonValider_Click(object sender, EventArgs e)
        {
            if (insert == true)
            {
                client newcli = new client
                {
                    cli_nom = textBoxNom.Text,
                    cli_adresse = textBoxAdresse.Text,
                    cli_contact = textBoxTel.Text,
                    cli_type = cli_type,
                };

                ClientDAO repo = new ClientDAO();

                repo.Insert(newcli);

                dataGridView1.DataSource = repo.Liste();
            }
            if (update == true)
            {
                client newcli = new client
                {
                    cli_numero = cli_numero,
                    cli_nom = textBoxNom.Text,
                    cli_adresse = textBoxAdresse.Text,
                    cli_contact = textBoxTel.Text,
                    cli_type = cli_type,
                };

                ClientDAO repo = new ClientDAO();

                repo.Update(newcli);

                dataGridView1.DataSource = repo.Liste();
            }
        }

        private void buttonModif_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                cli_numero = dataGridView1.SelectedRows[0].Cells[0].Value.ToString();
                insert = false;
                update = true;
                groupBox1.Enabled = true;

                textBoxNom.Text = dataGridView1.SelectedRows[0].Cells[1].Value.ToString();
                textBoxAdresse.Text = dataGridView1.SelectedRows[0].Cells[2].Value.ToString();
                textBoxTel.Text = dataGridView1.SelectedRows[0].Cells[3].Value.ToString();
                cli_type = Convert.ToBoolean(dataGridView1.SelectedRows[0].Cells[4].Value.ToString());
                if (cli_type == false)
                {
                    checkedListBox1.CheckOnClick = false;
                }
                else
                {
                    checkedListBox1.CheckOnClick = true;
                }

            }
            else
                {
                    MessageBox.Show("Veuillez selectionner un client s'il vous plaît");
                }
        }

        private void buttonSupp_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                cli_numero = dataGridView1.SelectedRows[0].Cells[0].Value.ToString();

                client newcli = new client
                {
                    cli_numero = cli_numero,
                };
            
                ClientDAO repo = new ClientDAO();

                if (MessageBox.Show("Êtes-vous certain de vouloir supprimer ce client, monsieur?","confirm",MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                     repo.Delete(newcli);
                     dataGridView1.DataSource = repo.Liste();
                }
                else
                {
                     MessageBox.Show("client non supprimé");
                }

            }
            else
            {
                MessageBox.Show("Veuillez selectionner un client s'il vous plaît");
            }
        }
    }
}
