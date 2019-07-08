package testbenchmark;

import app.verification.ExportExcel;
import app.verification.FileVerification;
import app.verification.report.VerificationReport;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class RunKratos {
    static String FLOAT_CDFPL = "./benchmark/float-cdfpl-func";
    static String FLOAT_BENCHS = "./benchmark/float-benchs";
    static String KRATOS = "./benchmark/kratos/loop_1";
    static String ECA_RERS = "./benchmark/eca-rers2012";

    public static void main(String[] args) throws RowsExceededException, WriteException, IOException {
        ExportExcel exportExcel = new ExportExcel("Kratos Benchmark loop 1.xls");

        File file = new File(KRATOS);
        FileVerification fv = new FileVerification();
        List<VerificationReport> reportList = fv.verifyDirectory(file);
        exportExcel.writeExcel(reportList);
    }
}