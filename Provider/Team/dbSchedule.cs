using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Provider
{
    public class dbSchedule
    {
        public DataTable GetDataTable(string psConnectionString, int piTeamId)
        {
            SqlConnection con = new SqlConnection(psConnectionString);
            SqlCommand cmd = new SqlCommand("appFillScheduleByTeamId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@TeamId", SqlDbType.Int).Value = piTeamId;

            SqlDataAdapter adpt = new SqlDataAdapter(cmd);

            DataTable dtLocal = new DataTable();
            try
            {
                con.Open();
                adpt.Fill(dtLocal);
            }
            catch (Exception ex)
            {
                throw (ex);
            }
            finally
            {
                con.Close();
            }

            return dtLocal;
        }

        public DataTable GetDataTable(string psConnectionString, DateTime pdtDatestamp)
        {
            SqlConnection con = new SqlConnection(psConnectionString);
            SqlCommand cmd = new SqlCommand("appFillScheduleByDatestamp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@DateTimestamp", SqlDbType.DateTime).Value = pdtDatestamp;

            SqlDataAdapter adpt = new SqlDataAdapter(cmd);

            DataTable dtLocal = new DataTable();
            try
            {
                con.Open();
                adpt.Fill(dtLocal);
            }
            catch (Exception ex)
            {
            }
            finally
            {
                con.Close();
            }

            return dtLocal;
        }
    }
}
