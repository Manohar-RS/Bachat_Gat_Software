import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddRepaymentServlet")
public class AddRepaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        int loanId = Integer.parseInt(request.getParameter("LoanID"));
        int memberId = Integer.parseInt(request.getParameter("MemberID"));
        String memberName = request.getParameter("MemberName");
        String repaymentDate = request.getParameter("RepaymentDate");
        double bankAmount = Double.parseDouble(request.getParameter("BankAmount"));
        double internalAmount =Double.parseDouble(request.getParameter("InternalAmount"));
        double internalInterest =Double.parseDouble( request.getParameter("InternalInterest"));
        double savingInstallment = Double.parseDouble(request.getParameter("SavingInstallment"));

       
      
        try (Connection conn = DBConnection.getConnection()){
       	   // Class.forName("com.mysql.cj.jdbc.Driver");
       	   // Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/P1","root","root");
                        
            String sql = "INSERT INTO installment ( MemberID,LoanID, MemberName, RepaymentDate, BankAmount, InternalAmount,InternalInterest, SavingInstallment) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, loanId);
            ps.setInt(2, memberId);
            ps.setString(3, memberName);
            ps.setString(4, repaymentDate);
            ps.setDouble(5, bankAmount);
            ps.setDouble(6, internalAmount);
            ps.setDouble(7, internalInterest);
            ps.setDouble(8, savingInstallment);

           
            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<script>alert('Repayment Details Added Successfully!'); window.location='home.html';</script>");
            } else {
                out.println("<script>alert('Failed to Add Repayment Details!'); window.location='Repayment.html';</script>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error: " + e.getMessage() + "'); window.location='Repayment.html';</script>");
        }
            //        } finally {
//            try {
//                if (ps != null) ps.close();
//                if (con != null) con.close();
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
    }
}



