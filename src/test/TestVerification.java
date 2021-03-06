package test;

import app.verification.FileVerification;
import app.verification.report.VerificationReport;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class TestVerification {
    public static void main(String[] args) throws RowsExceededException, WriteException, IOException {
        FileVerification fv = new FileVerification();

        List<VerificationReport> reportList = fv.verify(new File("float-cdfpl/newton_1_4_false_unreach_call.c"));

        for (VerificationReport report : reportList) {
            System.err.println(report.getCounterEx());
        }

//		File file = new File("TestSpoon.java");
//		
//		String extension = FilenameUtils.getExtension(file.getAbsolutePath());
//		String name = FilenameUtils.getName(file.getAbsolutePath());
//		name = FilenameUtils.getBaseName(file.getAbsolutePath());
//		System.out.println("extension: " + extension);
//		System.out.println("name: " + name);
    }
}
