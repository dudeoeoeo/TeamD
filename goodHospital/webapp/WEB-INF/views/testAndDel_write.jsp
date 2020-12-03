<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>write.html</title>
    <style>
        #wrap { border:1px solid #000; width:450px; margin:auto; }
        table {border-collapse: collapse; width:100% }

        th, td { padding:8px; text-align:left;
        border-bottom: 1px solid #ddd;
        }
        tr:hover { background:pink; cursor:pointer }
    </style>
</head>
<body>
<div id="wrap">
    <h1> 설문 질문 등록 </h1>
    <form method="post" action="insert">
    <table>
        <tr>
            <td>질문: <input type="text" name="question" placeholder="질문을 입력해주세요"></td>
        </tr>
        <tr>
            <td>답변: <input type="text" name="ans" placeholder="답변을 입력해주세요"></td>
       	</tr>
       	<tr>
            <td>답변: <input type="text" name="ans" placeholder="답변을 입력해주세요"></td>
        </tr>
        <tr>
            <td>답변: <input type="text" name="ans" placeholder="답변을 입력해주세요"></td>
       </tr>
       <tr>
            <td>답변: <input type="text" name="ans" placeholder="답변을 입력해주세요"></td>
        </tr>
        <tr>
            <td>질문 진행상태: <input type="radio" name="status" value="y">yes
            <input type="radio" name="status" value="n">no</td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="질문등록">
                <input type="button" value="답변추가">
                <input type="button" value="질문추가">
            </td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>