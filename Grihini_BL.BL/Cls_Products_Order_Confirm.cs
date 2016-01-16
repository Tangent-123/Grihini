using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Grihini_DL.DL;

namespace Grihini_BL.BL
{
    public class Cls_Products_Order_Confirm
    {
        ClsDB ogde = new ClsDB();

        public DataTable fetchAddress(int OperationId, int userid, string Address_Id)
        {
            SqlParameter[] param = new SqlParameter[3];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@User_Id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = userid;

            param[2] = new SqlParameter("@Address_Id", SqlDbType.VarChar, 100);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = Address_Id;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Txn_Cart", param);
            return dt;
        }

        public DataTable insertorder(int OperationId, int userid, string Address_Id)
        {
            SqlParameter[] param = new SqlParameter[3];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@User_Id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = userid;

            param[2] = new SqlParameter("@Del_Address_Id", SqlDbType.VarChar, 100);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = Address_Id;

            DataTable dt = new DataTable();

            dt = ogde.Return_DataTable("usp_Order_Management", param);

            return dt;

        }
    }
}