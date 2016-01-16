using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Grihini_DL.DL;

namespace Grihini_BL.BL
{
    public class Cls_Track_My_Order
    {
        ClsDB ogde = new ClsDB();



        public DataTable fetchcartdetails(int OperationId, int userid)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@User_Id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = userid;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Order_Management", param);
            return dt;

        }


        public DataTable fetchAddress(int OperationId, int userid)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@User_Id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = userid;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Order_Management", param);
            return dt;
        }

        public DataTable trackorderfetch(int OperationId, int userid)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@User_Id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = userid;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Order_Management", param);
            return dt;
        }
    }
}
