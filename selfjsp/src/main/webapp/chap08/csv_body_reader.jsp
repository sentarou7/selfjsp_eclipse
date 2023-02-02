<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="win" uri="https://wings.msn.to/WingsTagLibs-1.0" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
    crossorigin="anonymous">
<title>カスタムタグ</title>
</head>
<body>
<c:set var="csv">
会員ID	氏名	住所	電話番号	メールアドレス
1	山田太郎	東京都東京市南町1-1-1	03-9999-XXXX	yamada@example.com
2	鈴木浩二	神奈川県松戸市金町2-4-5	04-1111-XXXX	suzuki@example.com
3	井上春子	埼玉県浦安市本町4-7-9	04-2222-XXXX	inoue@example.com
4	佐々木のぞみ	千葉県横浜市東町1-2-3	04-3333-XXXX	sasaki@example.com
5	川本健三	埼玉県本庄市春日町2-4-3	04-4444-XXXX	kawamoto@example.com
6	佐藤洋一	東京都南東京市白町3-1-2	03-8888-XXXX	satou@example.com
7	田中洋子	茨城県武蔵野市東町4-1-2	04-5555-XXXX	tanaka@example.com
8	中川雄一	茨城県横浜市芳野町2-3-2	04-6666-XXXX	nakagawa@example.com
9	日村和也	東京都千葉市上町1-4-3	03-7777-XXXX	himura@example.com
10	松田幸子	東京都東京市北町2-2-3	03-6666-XXXX	matsuda@example.com
</c:set>
<win:CsvBodyReader delimiter="\t">${csv}</win:CsvBodyReader>
</body>
</html>