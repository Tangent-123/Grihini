using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Grihini_DL.DL
{
    public class ClsDB
    {

        SqlConnection Con = new SqlConnection(ConfigurationSettings.AppSettings["ConnectDB"]);

        public void DoConnection()
        {
            if ((Con.State == ConnectionState.Closed) || (Con.State == ConnectionState.Broken))
            {
                Con.Open();
            }

        }

        public void DisConnect()
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }
        }
        public DataTable Return_DataTable(string SP_Name, SqlParameter[] param)
        {
            DataTable dtMain = new DataTable();
            DoConnection();

            SqlCommand cmd = new SqlCommand(SP_Name, Con);
            cmd.CommandType = CommandType.StoredProcedure;

            if (param.Length > 0)
            {
                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }
            }


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtMain);

            DisConnect();
            return dtMain;

        }

        public Int32 Insert_Update_Del(string SP_Name, SqlParameter[] param)
        {

            DoConnection();

            SqlCommand cmd = new SqlCommand(SP_Name, Con);
            cmd.CommandType = CommandType.StoredProcedure;

            if (param.Length > 0)
            {
                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }
            }

            Int32 intvel = cmd.ExecuteNonQuery();
            DisConnect();
            return intvel;


        }

        public DataTable Return_DataTable(string SP_Name)
        {

            DataTable dtMain = new DataTable();
            DoConnection();

            SqlCommand cmd = new SqlCommand(SP_Name, Con);
            cmd.CommandType = CommandType.StoredProcedure;



            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtMain);
            DisConnect();

            return dtMain;

        }

        public DataTable Return_DataTablee(string SP_Name, SqlParameter[] param)
        {
            DataTable dtMain = new DataTable();
            DoConnection();

            SqlCommand cmd = new SqlCommand(SP_Name, Con);
            cmd.CommandType = CommandType.StoredProcedure;

            if (param.Length > 0)
            {
                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }
            }

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtMain);
            DisConnect();
            return dtMain;
        }

        public DataSet Return_DataSet(string SP_Name, SqlParameter[] param)
        {
            DataSet dtMain = new DataSet();
            DoConnection();

            SqlCommand cmd = new SqlCommand(SP_Name, Con);
            cmd.CommandType = CommandType.StoredProcedure;

            if (param.Length > 0)
            {
                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtMain);

            DisConnect();
            return dtMain;
        }
    }
}
