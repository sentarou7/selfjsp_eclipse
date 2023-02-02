package to.msn.wings.selfjsp.chap09;

import java.io.IOException;

import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.pdf.PdfDocument;
// import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Text;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chap09/PdfBasicServlet.pdf")
public class PdfBasicServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        PdfDocument pdf = new PdfDocument(new PdfWriter(response.getOutputStream()));
        Document doc = new Document(pdf);
        PdfFont font = PdfFontFactory.createFont("HeiseiKakuGo-W5", "UniJIS-UCS2-H");
        doc.setFont(font);
        doc.add(new Paragraph("こんにちは、").add(new Text("世界！").setFontSize(20).setFontColor(new DeviceRgb(255, 0, 0))));
        doc.close();
    }
}
