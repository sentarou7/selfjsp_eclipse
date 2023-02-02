package to.msn.wings.selfjsp.chap09;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Table;
import com.itextpdf.layout.property.HorizontalAlignment;
import com.itextpdf.layout.property.TextAlignment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chap09/PdfTableServlet.pdf")
public class PdfTableServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        PdfDocument pdf = new PdfDocument(
            new PdfWriter(response.getOutputStream()));
        Document doc = new Document(pdf);
        PdfFont font = PdfFontFactory.createFont("HeiseiKakuGo-W5", "UniJIS-UCS2-H");
        doc.setFont(font);
        Table table = new Table(new float[] { 255, 50, 120, 70 });
        String[] headers = { "書名", "価格", "出版社", "刊行日" };
        for (String header : headers) {
        Cell cell = new Cell();
        cell.setFontSize(12)
            .setBold()
            .setHorizontalAlignment(HorizontalAlignment.CENTER)
            .setTextAlignment(TextAlignment.CENTER)
            .add(new Paragraph(header));
        table.addHeaderCell(cell);
        }
        try {
        Context context = new InitialContext();
        DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/selfjsp");
        try (Connection db = ds.getConnection()) {
            PreparedStatement ps = db.prepareStatement("SELECT title, price, publish, published FROM book ORDER BY published DESC");
            ResultSet rs = ps.executeQuery();
            ResultSetMetaData meta = rs.getMetaData();
            while (rs.next()) {
            for (int i = 1; i <= meta.getColumnCount(); i++) {
                Cell dcell = new Cell();
                dcell.add(new Paragraph(rs.getString(i)));
                table.addCell(dcell);
            }
            }
        }
        } catch (NamingException | SQLException e) {
        e.printStackTrace();
        }
        doc.add(table);
        doc.close();
    }
}
