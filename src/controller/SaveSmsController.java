package controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.ss.util.NumberToTextConverter;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import manager.UserManager;
import user.Message;
import user.User;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 * Servlet implementation class SaveSmsController
 */
@MultipartConfig
@WebServlet("/sms-controller")
public class SaveSmsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String STORAGE_PRODUCT_IMAGES = "/files/";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = 0;
		String campaignName = "";
		String senderId = "";
		String contactNumber = "";
		String contacts[]=null;
		String file = "";
		String message = "";
		String timeZone = "";
		String userName = "";
		String routeName = "";
		String ContactNumber = "";
		File savedFile=null;
		
		String fieldName = "";
		
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		    if (!isMultipart) {
		        System.out.println("Else is not executed");
		    } else {
		    	FileItemFactory factory = new DiskFileItemFactory();
		        ServletFileUpload upload = new ServletFileUpload(factory);
		        List items = null;
		        try {

		            items = upload.parseRequest(request);
		        } catch (FileUploadException e) {
		            e.printStackTrace();
		        }
		        Iterator itr = items.iterator();
		        while (itr.hasNext()) {
		        	System.out.println("in while block");
		        	 FileItem item = (FileItem) itr.next();
		             System.out.println("here " + item);
		                 fieldName = item.getFieldName();
		                 
		                 if(fieldName.equalsIgnoreCase("campaignName")){
		                	 campaignName = item.getString();
		              
		                 	System.out.println("campaignName="+campaignName);
		 				}
		                 if(fieldName.equalsIgnoreCase("senderId")){
		                	 senderId = item.getString();
			              
			                 	System.out.println("senderId="+senderId);
			 				}
		                 if(fieldName.equalsIgnoreCase("contactNumber")){
		                	 contactNumber = item.getString();
			              
			                 	System.out.println("contactNumber="+contactNumber);
			 				}
		                 if(fieldName.equalsIgnoreCase("file")) {
		                	 try {
			                	 String itemName = item.getName(); 
							     	System.out.print("itemNameitemNameitemNameitemName"+itemName);
							     	file= itemName;
							     	savedFile = new File(getServletContext().getRealPath("/")+STORAGE_PRODUCT_IMAGES+itemName);
							     	System.out.println("============================================="+savedFile);
					                    // File savedFile = new File("J:\\abc\\" + namse);
					                    item.write(savedFile);
//					                    try {
//					                    	byte b[] = file.getBytes();
//					                    	System.out.println("bytes============================"+b);
//						                    BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(savedFile));
//						                    System.out.println("stream=================================="+bout);
//						                    bout.write(b);
//						                    bout.flush();
//						                    bout.close();
//					                    } catch(Exception e) {
//					                    	e.printStackTrace();
//					                    }
//					                    
//					                    XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(new File(getServletContext().getRealPath("/")+STORAGE_PRODUCT_IMAGES+itemName)));
//					                    FileOutputStream stream = new FileOutputStream(savedFile);
//					                    wb.write(stream);
//					                    stream.flush();
//					                    stream.close();
					                    
					                    System.out.print("nnnnnnnnnnnnnnn"+file);
			                 } catch(Exception e) {
			                	 e.printStackTrace();
			                 } 
		                 }
		                 if(fieldName.equalsIgnoreCase("message")){
		                	 message = item.getString();
			              
			                 	System.out.println("message="+message);
			 				}
		                 if(fieldName.equalsIgnoreCase("timeZone")){
		                	 timeZone = item.getString();
			              
			                 	System.out.println("timeZone="+timeZone);
			 				}
		                 if(fieldName.equalsIgnoreCase("userName")){
		                	 userName = item.getString();
			              
			                 	System.out.println("userName="+userName);
			 				}
		                 if(fieldName.equalsIgnoreCase("route")){
		                	 routeName = item.getString();
			              
			                 	System.out.println("routeName="+routeName);
			 				}
		                 if(fieldName.equalsIgnoreCase("ContactNumber")){
		                	 ContactNumber = item.getString();
		                	 	
		                	 contacts = ContactNumber.split(",");
			                 	System.out.println("ContactNumber="+contacts);
			 				}
		                 
		        }
		    }
		    
		    try {
		    	Message m  = new Message();
		    	m.setCampaignName(campaignName);
		    	m.setSenderId(senderId);
		    	m.setMessage(message);
		    	m.setTimeZone(timeZone);
		    	m.setUserName(userName);
		    	
		    	if(file=="") {
		    		User u = (User)request.getSession(false).getAttribute("user");
		    		for(String c :contacts) {
		    			m.setContacts(c);
		    			id = new UserManager().saveSMSInDb(m);
		    		}
		    		
		    		if(id>0) {
		    			request.getSession().setAttribute("message", "Message Saved Successfuly");
		    			if(u.getUserType().equals("admin")) {
		    				request.getRequestDispatcher("/Administration.jsp").forward(request, response);
		    			} else {
		    				request.getRequestDispatcher("/UserDashboard.jsp").forward(request, response);
		    			}
		    		} else {
		    			request.getSession().setAttribute("message", "An error occured");
		    		}
		    	} else {
		    		extractFile(savedFile.toString(), m, request, response);
		    	}
		    	
		    	
		    } catch(Exception e) {
		    	e.printStackTrace();
		    }
		    
	}

	private void extractFile(String inputFile, Message m, HttpServletRequest request, HttpServletResponse response) throws Exception{
		int id = 0;
		 try
		    {
		        Workbook workBook = WorkbookFactory.create(new FileInputStream(inputFile));
		        Sheet sheet = workBook.getSheetAt(0);
		        Iterator rowIter = sheet.rowIterator();

		        while(rowIter.hasNext())
		        {
		            XSSFRow row = (XSSFRow) rowIter.next();
		            Iterator cellIter = row.cellIterator();
		            Vector cellStoreVector=new Vector();

		            while(cellIter.hasNext())
		            {
		                XSSFCell cell = (XSSFCell) cellIter.next();
		                
		                if(cell.getCellType() == Cell.CELL_TYPE_NUMERIC) {
		                    String numbers = NumberToTextConverter.toText(cell.getNumericCellValue());
		                    System.out.println("data======="+numbers);
		                    m.setContacts(numbers);
		                  id = new UserManager().saveSMSInDb(m);
		                  
		                }
		                
		            }
		            
		            
		        }
		        
		        if(id>0) {
              	  User u = (User)request.getSession(false).getAttribute("user");
        			request.getSession().setAttribute("message", "Message Saved Successfuly");
        			if(u.getUserType().equals("admin")) {
        				request.getRequestDispatcher("/Administration.jsp").forward(request, response);
        			} else {
        				request.getRequestDispatcher("/UserDashboard.jsp").forward(request, response);
        			}
        		} else {
        			request.getSession().setAttribute("message", "An error occured");
        		}
		        
		        
		        
		    }
		    catch (Exception e)
		    {
		        System.out.println(e.getMessage());
		    }
		}


}
