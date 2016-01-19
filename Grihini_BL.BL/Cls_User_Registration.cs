using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data.OleDb;
using System.Configuration;
using Grihini_DL.DL;

namespace Grihini_BL.BL
{
    public class Cls_User_Registration
    {

        ClsDB ogde = new ClsDB();

        public DataTable getCountry(int OperationId)
        {
            SqlParameter[] param = new SqlParameter[1];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_User_Registration", param);
            return dt;
        }

        public DataTable getLocation(int OperationId)
        {
            SqlParameter[] param = new SqlParameter[1];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_mst_Location", param);
            return dt;
        }

        public DataTable getState(int OperationId)
        {
            SqlParameter[] param = new SqlParameter[1];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Mst_State", param);
            return dt;
        }


        public int Insert_Data(int OperationId, string Title, string First_Name, string Middle_Name, string Last_Name,
            string Gender, string Dob, string Mobile_No, string Email_Id, string CountryNm, string StateNm, string LocationNm, string Emp_Id)
        {
            SqlParameter[] param = new SqlParameter[13];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Title", SqlDbType.VarChar, 100);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = Title;

            param[2] = new SqlParameter("@First_Name", SqlDbType.VarChar, 100);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = First_Name;

            param[3] = new SqlParameter("@Middle_Name", SqlDbType.VarChar, 100);
            param[3].Direction = ParameterDirection.Input;
            param[3].Value = Middle_Name;

            param[4] = new SqlParameter("@Last_Name", SqlDbType.VarChar, 100);
            param[4].Direction = ParameterDirection.Input;
            param[4].Value = Last_Name;

            param[5] = new SqlParameter("@Gender", SqlDbType.VarChar, 100);
            param[5].Direction = ParameterDirection.Input;
            param[5].Value = Gender;

            param[6] = new SqlParameter("@Dob", SqlDbType.VarChar, 100);
            param[6].Direction = ParameterDirection.Input;
            param[6].Value = Dob;

            param[7] = new SqlParameter("@Mobile_No", SqlDbType.VarChar, 100);
            param[7].Direction = ParameterDirection.Input;
            param[7].Value = Mobile_No;

            param[8] = new SqlParameter("@Email_Id", SqlDbType.VarChar, 100);
            param[8].Direction = ParameterDirection.Input;
            param[8].Value = Email_Id;

            param[9] = new SqlParameter("@CountryNm", SqlDbType.VarChar, 100);
            param[9].Direction = ParameterDirection.Input;
            param[9].Value = CountryNm;

            param[10] = new SqlParameter("@StateNm", SqlDbType.VarChar, 100);
            param[10].Direction = ParameterDirection.Input;
            param[10].Value = StateNm;

            param[11] = new SqlParameter("@LocationNm", SqlDbType.VarChar, 100);
            param[11].Direction = ParameterDirection.Input;
            param[11].Value = LocationNm;

            param[12] = new SqlParameter("@Emp_Id", SqlDbType.VarChar, 100);
            param[12].Direction = ParameterDirection.Input;
            param[12].Value = Emp_Id;


            int dt = ogde.Insert_Update_Del("usp_User_Registration", param);

            return dt;
        }


        public DataTable fetchlocationAgainstState(int OperationId, int stateid)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@state_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = stateid;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_User_Registration", param);
            return dt;
        }

        public DataTable FetchUserDetails(int OperationId)
        {
            SqlParameter[] param = new SqlParameter[1];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_User_Registration", param);
            return dt;
        }

        public DataTable fetchState(int OperationId, int CountryId)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@CountryId", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = CountryId;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_User_Registration", param);
            return dt;
        }

        public DataTable fetchlocation(int OperationId, int StateId)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@state_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = StateId;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_User_Registration", param);
            return dt;
        }
    }
}
