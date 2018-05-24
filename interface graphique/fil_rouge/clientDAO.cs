using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace fil_rouge
{
    class clientDAO
    {
        SqlConnection connect;

        public void DAO(string chaine)
        {
            connect = new SqlConnection(chaine);
            connect.Open();
        }
        public void Insert(client client)
        {
            DAO("server=.;database=fil_rouge;integrated security=true");
            SqlCommand requete = new SqlCommand(@"insert into client(Cli_nom, cli_adresse, cli_contact, cli_type) values (@nom,@adresse,@contact,@type)", connect);
            requete.Parameters.AddWithValue("@nom", client.cli_nom);
            requete.Parameters.AddWithValue("@adresse", client.cli_adresse);
            requete.Parameters.AddWithValue("@contact",client.cli_contact);
            requete.Parameters.AddWithValue("@type", client.cli_type);
            requete.ExecuteNonQuery();
            connect.Close();

        }
        public void Update(client client)
        {
            DAO("server=.;database=fil_rouge;integrated security=true");
            SqlCommand requete = new SqlCommand(@"update client set cli_nom = @nom, cli_adresse = @adresse, cli_contact = @contact, cli_type = @type where cli_numero = @numero",connect);
            requete.Parameters.AddWithValue("@numero", client.cli_numero);
            requete.Parameters.AddWithValue("@nom", client.cli_nom);
            requete.Parameters.AddWithValue("@adresse", client.cli_adresse);
            requete.Parameters.AddWithValue("@contact", client.cli_contact);
            requete.Parameters.AddWithValue("@type", client.cli_type);
            requete.ExecuteNonQuery();
            connect.Close();
        }
        public void Delete(client client)
        {
            DAO("server=.;database=fil_rouge;integrated security=true");
            SqlCommand requete = new SqlCommand(@"delete from client where cli_numero=@numero",connect);
            requete.Parameters.AddWithValue("@numero", client.cli_numero);
            requete.ExecuteNonQuery();
            connect.Close();
        }
        public List<client> Liste()
        {
            List<client> resultat = new List<client>();

            DAO("server=.;database=fil_rouge;integrated security=true");
            SqlCommand requete = new SqlCommand(@"select * from client", connect);
            SqlDataReader lecture = requete.ExecuteReader();

            while (lecture.Read())
            {
                client c = new client();
                c.cli_numero = Convert.ToString(lecture["cli_numero"]);
                c.cli_nom = Convert.ToString(lecture["cli_nom"]);
                c.cli_adresse = Convert.ToString(lecture["cli_adresse"]);
                c.cli_contact = Convert.ToString(lecture["cli_contact"]);
                c.cli_type = Convert.ToString(lecture["cli_type"]);
                resultat.Add(c);
            }

            connect.Close();
            return resultat;

        }
    }
}
