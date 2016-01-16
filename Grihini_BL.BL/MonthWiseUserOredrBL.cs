using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Grihini_DL.DL;
using System.Web;

namespace Grihini_BL.BL
{
    public class MonthWiseUserOredrBL
    {
        ClsDB ogde = new ClsDB();


        public DataTable FetchUserOrder(int OperationId)
        {
            SqlParameter[] param = new SqlParameter[1];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Txn_Cart", param);
            return dt;
        }



        public DataTable FetchUserOrder(int OperationId, int UserID)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@UserId", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = UserID;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Txn_Cart", param);
            return dt;
        }
    }
}
