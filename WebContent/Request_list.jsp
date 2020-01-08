<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
   $(document).ready(function () {
   
       $('.btn-filter').on('click', function () {
         var $target = $(this).data('target');
         if ($target != 'all') {
           $('.table tr').css('display', 'none');
           $('.table tr[data-status="' + $target + '"]').fadeIn('slow');
         } else {
           $('.table tr').css('display', 'none').fadeIn('slow');
         }
       });
   
    });
</script>
<style>
   body {
      font-family: 'Open Sans', sans-serif;
      color: #353535;
   }
   .content h1 {
      text-align: center;
   }
   .content .content-footer p {
      color: #6d6d6d;
       font-size: 12px;
       text-align: center;
   }
   .content .content-footer p a {
      color: inherit;
      font-weight: bold;
   }
   .panel {
      border: 1px solid #ddd;
      background-color: #fcfcfc;
   }
   .panel .btn-group {
      margin: 15px 0 30px;
   }
   .panel .btn-group .btn {
      transition: background-color .3s ease;
   }
   .table-filter {
      background-color: #fff;
      border-bottom: 1px solid #eee;
   }
   .table-filter tbody tr:hover {
      cursor: pointer;
      background-color: #eee;
   }
   .table-filter tbody tr td {
      padding: 10px;
      vertical-align: middle;
      border-top-color: #eee;
   }
   .table-filter tbody tr.selected td {
      background-color: #eee;
   }
   .table-filter tr td:first-child {
      width: 38px;
   }
   .table-filter tr td:nth-child(2) {
      width: 35px;
   }
   .table-filter .media-photo {
      width: 38px;
   }
   .table-filter .media-body {
       display: block;
       /* Had to use this style to force the div to expand (wasn't necessary with my bootstrap version 3.3.6) */
   }
   .table-filter .media-meta {
      font-size: 11px;
      color: #999;
   }
   .table-filter .title {
      color: #2BBCDE;
      font-size: 14px;
      font-weight: bold;
      line-height: normal;
      margin: 0;
   }
   .table-filter .media .title span {
      font-size: .8em;
      margin-right: 20px;
   }
   .table-filter .delivery {
      color: #5cb85c;
   }
   .table-filter .order {
      color: #f0ad4e;
   }
   .table-filter .return {
      color: #ed9624;
   }
   .table-filter .payment {
      color: #33b5e5;
   }
   .table-filter .media .summary {
      font-size: 14px;
   }
</style>
</head>
<body>         
<%@ include file="include/top.jsp" %>


<div class="container">
   <div class="row">

      <section class="content">
         <h1>Q&A 게시판</h1>
         <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
               <div class="panel-body">
                  <div class="pull-right">
                     <div class="btn-group">
                        <button type="button" class="btn btn-default btn-filter" data-target="all">글쓰기<button>
                     </div>
                  </div>
                  <div class="table-container">
                     <table class="table table-filter">
                        <thead>   
                           <tr>
                              <th>이미지</th>
                              <th>아이디</th>
                              <th>제목</th>
                              <th>유형</th>
                              <th>등록일</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr data-status="delivery">
                              <div class="media">
                                 <td>   
                                    <a href="#" class="pull-left">
                                       <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
                                    </a>
                                 </td>   
                                 <div class="media-body">
                                    <td class="title">
                                       Lorem Impsum
                                    </td>   
                                    <td>
                                       <p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
                                    </td>
                                    <td>   
                                       <span class="pull-right delivery">(delivery)</span>
                                    </td>
                                    <td>
                                       <span class="media-meta pull-right">Febrero 13, 2016</span>
                                    </td>
                                 </div>
                              </div>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
            <div class="content-footer">
               <p>
               </p>
            </div>
         </div>
      </section>
   </div>
</div>   

<%@ include file="include/bottom.jsp" %>
</body>
</html>