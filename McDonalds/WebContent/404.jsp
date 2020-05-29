<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.content-box {
  margin-top: 96px;
  text-align: center;
}

/**Button Set Up**/
.btn {
  height: 32px;
  border-radius: 4px;
  box-shadow: 0 3px 1px -2px rgba(0,0,0,0.12), 0 2px 2px 0 rgba(0,0,0,0.14), 0 1px 5px 0 rgba(0,0,0,0.2);
  padding: 0 16px;
  margin: 8px 4px;
  font-family: "Open Sans";
  font-size: 13px;
  line-height: 16px;
  text-align: center;
  cursor: pointer;
  -webkit-transition: background-color 100ms;
  transition: background-color 100ms;
  transition: box-shadow 100ms;
  -webkit-
  transition: box-shadow 100ms;
  transition-timing-function: cubic-bezier(0.4, 0.0, 0.2, 1);
}

.btn:hover {
  box-shadow: 0 1px 10px 0 rgba(0,0,0,0.12), 0 4px 5px 0 rgba(0,0,0,0.14), 0 2px 4px -1px rgba(0,0,0,0.2);
}

.btn:active {
  box-shadow: 0 1px 18px 0 rgba(0,0,0,0.12), 0 6px 10px 0 rgba(0,0,0,0.14), 0 3px 5px -1px rgba(0,0,0,0.2);
}

.btn:focus {
  outline:0;
}

.btn-primary {
  background-color: #EA7F1E;
  border: none;
  color: #FFFFFF;
  min-width: 144px;
}

.btn-primary:hover {
  background-color: #EE984B;
}

.btn-primary:active {
  background-color: #F2B278;
}

.btn-primary:disabled {
  background-color: #A5A5A5;
  box-shadow: none;
  cursor: auto;
}

.btn-secondary {
  background-color: #FFFFFF;
  border: 0.5px solid #D3D3D3;
  color: #393939;
}

.btn-secondary:hover {
  background-color: ##F7F7F7;
}

.btn-secondary:active { 
  background-color: #E7E7E7;
}

.btn-secondary:disabled {
  color: rgba(57, 57, 57, 0.3);
  box-shadow: none;
  cursor: auto;
}

/*404 Text*/
.errorPage {
  font-family: OpenSans-Extrabold;
  font-size: 200px;
  color: #393939;
  text-align: center;
  line-height: 200px;
}

.body-text {
  font-family: OpenSans-Extrabold;
  font-size: 20px;
  color: #393939;
  text-align: center;
  line-height: 24px;
}


</style>
</head>
<body>
<div class="container">
  <div class="content-box">
    <span class="errorPage">404</span>
    <p class="body-text">The page that you are looking for cannot be found</p>
    <div>
      <button class="btn btn-primary">Back to Home</button>
    </div>
  </div>
</div>
</body>
</html>