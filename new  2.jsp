<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*, toyShop.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
    ArrayList<OrderLineData> orderedToys = (ArrayList<OrderLineData>)session.getAttribute("orderedToys");
    ToyManager toyM = new ToyManagerImp();
    ToyData tData = null;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
    </head>
    <body>
        <h2>Shopping Cart</h2>


        <table border="1" cellspacing="6" cellpadding="6">
            <tr>
                <th>Toy Name</th>
                <th>Unit Price</th>
                <th>Quantity</th>
                <th>Cost</th>
                <th>Action</th>
            </tr>
            <%
                if(orderedToys != null){
                    for(int i =0; i < orderedToys.size(); i++){
                        tData = toyM.selectToy(MySQLConn.getInstance(), orderedToys.get(i).getToyID());
            %>
            <form name="frmCart" action="cart.jsp" method="get">
            <input type="hidden" name="txtToyID" value="<%=tData.getToyID()%>" />
        <input type="hidden" name="txtToyPrice" value="<%=tData.getPrice()%>" />
                <tr>
                    <td><%=tData.getToyName()%></td>
                    <td><%=tData.getPrice()%></td>
                    <td>
                        <input type="text" name="txtQuantity" size="3" value="<%=orderedToys.get(i).getOrderQuantity()%>" />                        
                    </td>
                    <td><%=orderedToys.get(i).getOrderCost()%></td>
                    <td>
                        <input type="submit" name="action" value="Update Cart" onclick=""/> | 
                        <input type="submit" name="action" value="Remove from Cart" />
                    </td>
                </tr>

            <%
                }
                }
            %>
              </form>
        </table>


        <a href="toy_search.jsp">Back to Search</a>
        || <a href="session_destroy.jsp">Remove All</a>
    </body>
</html>