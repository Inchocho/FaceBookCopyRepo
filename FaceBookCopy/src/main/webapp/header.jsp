<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>    
<head>
    <meta charset="utf-8"/>
    <title>The Overflowing Church</title>
        <style>
             #topMenu {            
                     height: 30px;
                     width: 1500px;
             }
             #topMenu ul li {                   
                     list-style: none;          
                     color: white;              
                     background-color: #2d2d2d; 
                     float: left;               
                     line-height: 30px;         
                     vertical-align: middle;    
                     text-align: center;        
             }
             #topMenu .menuLink {                               
                     text-decoration:none;                      
                     color: white;                              
                     display: block;                           
                     width: 300px;                              
                     font-size: 12px;                           
                     font-weight: bold;                         
                     font-family: "Trebuchet MS", Dotum, Arial; 
             }
             #topMenu .menuLink:hover {            
                     color: red;                  
                     background-color: #4d4d4d;   
             }
        </style>    
</head>
<body>
        <nav id="topMenu" >
            <ul>
                 <li><a class="menuLink" href="#">게시판 목록</a></li>
                 <li><a class="menuLink" href="#">회원정보</a></li>
                 <li><a class="menuLink" href="#">로그아웃</a></li>
            </ul>
        </nav>
</body>
</html>