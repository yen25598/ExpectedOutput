package app.verification;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import app.verification.report.VerificationReport;
import jxl.Workbook;
import jxl.format.Alignment;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

public class ExportExcel {
	static WritableWorkbook workbook = null;
	static WritableSheet sheet = null;
	
	//TODO constructor for new export
	ExportExcel(String fileName) throws IOException {
		if (fileName.equals("")) {
			fileName = "VTSE Export";
		}
		workbook = Workbook.createWorkbook(new File(fileName));
		sheet = workbook.createSheet("floats-cdfpl", 0);
		
	}
	
	
	/**
	 * new export excel for each row in excel file
	 * @param listOfRows
	 * @throws IOException
	 * @throws RowsExceededException
	 * @throws WriteException
	 */
	public static void writeExcel(ArrayList<VerificationReport> listOfRows) 
			throws IOException, RowsExceededException, WriteException{
		
		try {
			int index = 1;
			int numberOfRow = 4;
			
			//TODO: title of excel export
			sheet.addCell(new Label(5, 0, "Ket qua thuc nghiem")); // add a String to cell A1
			sheet.addCell(new Label(0, 3, "ID"));
			sheet.addCell(new Label(1, 3, "function"));
			sheet.addCell(new Label(2, 3, "pre-condition"));
			sheet.addCell(new Label(3, 3, "post-condition"));
			sheet.addCell(new Label(4, 3, "status"));
			sheet.addCell(new Label(5, 3, "cputime (s)"));
			sheet.addCell(new Label(6, 3, "memUsage (MB)"));
			
			//TODO: add element to excel export
			for(VerificationReport row: listOfRows) {
			
				String function = null, preCondition = null, postCondition = null;
				String status = null, memoryUsage = null, counterEx = null;
				double cpuTime = 0;
				WritableCellFormat cellFormat = new WritableCellFormat();
				cellFormat.setAlignment(Alignment.LEFT);
				cellFormat.setWrap(true);
				
				function = row.getFunctionName();
				preCondition = row.getPreCondition();
				postCondition = row.getPostCondition();
				status = row.getStatus();
				cpuTime = row.getSolverTime() / 1000.0;
				memoryUsage = "unknown";
				counterEx = row.getCounterEx();
				
				sheet.addCell(new Label(0, k, String.valueOf(numberOfRow++)));
				sheet.addCell(new Label(1, k, function));
				sheet.addCell(new Label(2, k, preCondition));
				sheet.addCell(new Label(3, k, postCondition));
				sheet.addCell(new Label(4, k, status));
				sheet.addCell(new Label(5, k, String.valueOf(cpuTime)));
				sheet.addCell(new Label(6, k, memoryUsage));
				sheet.addCell(new Label(7, k, counterEx, cellFormat));
				numberOfRow++;
//		
			
			}
		
			workbook.write();
			workbook.close();
			
			System.out.println("Export successfully");
		}
		catch(Exception e) {
			System.err.println("Error while exporting excel");
			e.printStackTrace();
		}
	}
}
