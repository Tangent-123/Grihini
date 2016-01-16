using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Grihini_DL.DL;


namespace Grihini_BL.BL
{
    public class Cls_Products_Registration
    {
        ClsDB ogde = new ClsDB();

        public DataTable getSubCategory(int OperationId, int category)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Category_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = category;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Product_Registration", param);
            return dt;
        }

        public DataTable getCategory(int OperationId)
        {
            SqlParameter[] param = new SqlParameter[1];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Product_Registration", param);
            return dt;
        }

        public DataTable getCountValues(int OperationId, int val)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@val", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = val;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Product_Registration", param);
            return dt;
        }

        public DataTable Insert_Products(int OperationId, int Category, int SubCategory, string Product_Name, string Description, string Text_Price, string Max_quantity, string Discount)
        {

            SqlParameter[] param = new SqlParameter[8];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Category_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = Category;

            param[2] = new SqlParameter("@Subcategory_id", SqlDbType.Int);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = SubCategory;

            param[3] = new SqlParameter("@Product_name", SqlDbType.VarChar, 200);
            param[3].Direction = ParameterDirection.Input;
            param[3].Value = Product_Name;

            param[4] = new SqlParameter("@Product_description", SqlDbType.VarChar, 200);
            param[4].Direction = ParameterDirection.Input;
            param[4].Value = Description;

            param[5] = new SqlParameter("@Product_price", SqlDbType.VarChar, 200);
            param[5].Direction = ParameterDirection.Input;
            param[5].Value = Text_Price;

            param[6] = new SqlParameter("@Max_quantity", SqlDbType.VarChar, 200);
            param[6].Direction = ParameterDirection.Input;
            param[6].Value = Max_quantity;

            param[7] = new SqlParameter("@Discount", SqlDbType.VarChar, 200);
            param[7].Direction = ParameterDirection.Input;
            param[7].Value = Discount;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Product_Registration", param);
            return dt;
        }


        public int InsertSize(int OperationId, object p_Id, string size)
        {
            SqlParameter[] param = new SqlParameter[3];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Product_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = p_Id;

            param[2] = new SqlParameter("@size", SqlDbType.VarChar, 100);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = size;

            int dt = ogde.Insert_Update_Del("usp_Product_Registration", param);

            return dt;
        }

        public int InsertWeight(int OperationId, object p_Id, string Weight)
        {
            SqlParameter[] param = new SqlParameter[3];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Product_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = p_Id;

            param[2] = new SqlParameter("@Weight", SqlDbType.VarChar, 100);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = Weight;

            int dt = ogde.Insert_Update_Del("usp_Product_Registration", param);

            return dt;
        }

        public DataTable pickpath(int OperationId, string Config_Name)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Config_Name", SqlDbType.VarChar, 100);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = Config_Name;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_ConfigValue", param);
            return dt;
        }

        public int InsertColor(int OperationId, object p_Id, string ColorPhoto, string Colorlocation)
        {
            SqlParameter[] param = new SqlParameter[4];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Product_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = p_Id;

            param[2] = new SqlParameter("@Colour", SqlDbType.VarChar, 100);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = ColorPhoto;

            param[3] = new SqlParameter("@Colour_Path", SqlDbType.VarChar, 100);
            param[3].Direction = ParameterDirection.Input;
            param[3].Value = Colorlocation;

            int dt = ogde.Insert_Update_Del("usp_Product_Registration", param);

            return dt;
        }

        public int InsertPhoto(int OperationId, object p_Id, string ProdPhoto, string location, string Flag)
        {
            SqlParameter[] param = new SqlParameter[5];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Product_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = p_Id;

            param[2] = new SqlParameter("@Image_name", SqlDbType.VarChar, 100);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = ProdPhoto;

            param[3] = new SqlParameter("@Image_path", SqlDbType.VarChar, 100);
            param[3].Direction = ParameterDirection.Input;
            param[3].Value = location;

            param[4] = new SqlParameter("@Flag", SqlDbType.VarChar, 100);
            param[4].Direction = ParameterDirection.Input;
            param[4].Value = Flag;

            int dt = ogde.Insert_Update_Del("usp_Product_Registration", param);

            return dt;
        }

        public DataTable Insert_Products(int OperationId, int userid, string Name, int Country, int State, int City, 
                                        string Pincode,string Address,string Landmark, string Phone)
        {
            SqlParameter[] param = new SqlParameter[10];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@User_Id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = userid;


            param[2] = new SqlParameter("@Name", SqlDbType.VarChar, 100);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = Name;

            param[3] = new SqlParameter("@Country_Id", SqlDbType.Int);
            param[3].Direction = ParameterDirection.Input;
            param[3].Value = Country;

            param[4] = new SqlParameter("@State_Id", SqlDbType.Int);
            param[4].Direction = ParameterDirection.Input;
            param[4].Value = State;

            param[5] = new SqlParameter("@City_Id", SqlDbType.Int);
            param[5].Direction = ParameterDirection.Input;
            param[5].Value = City;

            param[6] = new SqlParameter("@Pincode", SqlDbType.VarChar, 100);
            param[6].Direction = ParameterDirection.Input;
            param[6].Value = Pincode;

            param[7] = new SqlParameter("@Address", SqlDbType.VarChar, 100);
            param[7].Direction = ParameterDirection.Input;
            param[7].Value = Address;


            param[8] = new SqlParameter("@Landmark", SqlDbType.VarChar, 100);
            param[8].Direction = ParameterDirection.Input;
            param[8].Value = Landmark;


            param[9] = new SqlParameter("@PhoneNo", SqlDbType.VarChar, 100);
            param[9].Direction = ParameterDirection.Input;
            param[9].Value = Phone;

           

            //int dt = ogde.Insert_Update_Del("usp_Txn_Cart", param);

            //return dt;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Txn_Cart", param);
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

        public DataTable getCountry(int OperationId)
        {
            SqlParameter[] param = new SqlParameter[1];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_mst_Location", param);
            return dt;
        }

        public DataTable locationfetch(int OperationId, int state)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@State_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = state;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_mst_Location", param);
            return dt;
        }

        public Int32 Update_Product(int OperationId, int Category_id, int Subcategory_id, string Product_name, string Product_description, string Product_price, string Max_quantity, string Discount, int Product_id)
        {
            SqlParameter[] param = new SqlParameter[9];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Category_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = Category_id;

            param[2] = new SqlParameter("@Subcategory_id", SqlDbType.Int);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = Subcategory_id;

            param[3] = new SqlParameter("@Product_name", SqlDbType.VarChar, 500);
            param[3].Direction = ParameterDirection.Input;
            param[3].Value = Product_name;

            param[4] = new SqlParameter("@Product_description", SqlDbType.VarChar, 500);
            param[4].Direction = ParameterDirection.Input;
            param[4].Value = Product_description;

            param[5] = new SqlParameter("@Product_price", SqlDbType.VarChar, 500);
            param[5].Direction = ParameterDirection.Input;
            param[5].Value = Product_price;

            param[6] = new SqlParameter("@Max_Quantity", SqlDbType.VarChar, 500);
            param[6].Direction = ParameterDirection.Input;
            param[6].Value = Max_quantity;

            param[7] = new SqlParameter("@Discount", SqlDbType.VarChar, 500);
            param[7].Direction = ParameterDirection.Input;
            param[7].Value = Discount;

            param[8] = new SqlParameter("@Product_id", SqlDbType.Int);
            param[8].Direction = ParameterDirection.Input;
            param[8].Value = Product_id;

            int dt = ogde.Insert_Update_Del("usp_Product_Registration", param);

            return dt;


        }

        public DataTable FetchProduct(int OperationId)
        {
            SqlParameter[] param = new SqlParameter[1];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Product_Registration", param);
            return dt;
        }
        public DataTable Fetch_Product_By_ID(int OperationId, int Product_id)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;


            param[1] = new SqlParameter("@Product_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = Product_id;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Product_Registration", param);
            return dt;
        }




        public DataTable fetchlocation(int OperationId, int stateid)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@state_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = stateid;



            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("[usp_mst_Location]", param);
            return dt;
        }

        public DataTable fetchAdd(int OperationId, string userid)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@User_Id", SqlDbType.VarChar, 100);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = userid;
            
            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_User_Registration", param);
            return dt;
        }

        public int UpdateProductStatus(int OperationId, int ProductId)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Product_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = ProductId;

            int dt = ogde.Insert_Update_Del("usp_Product_Registration", param);
            return dt;
        }
        public DataTable fetchStateAgainstCountry(int OperationId, int CountryId)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Country_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = CountryId;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_mst_Location", param);
            return dt;
        }

        public DataTable fetchCiryAgaginstState(int OperationId, int StateId)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@state_id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = StateId;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_mst_Location", param);
            return dt;
        }
    }
}
