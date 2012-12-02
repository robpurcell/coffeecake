<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <r:require modules="bootstrap"/>
    <r:require modules="angularTest"/>
</head>

<body ng-app="MyApp">
<div ng-controller="MyCtrl">
    What typed reflected below

    <input type="text" ng-model="myText"/>

    <span><b>{{myText}}</b></span>
</div>
</body>
</html>
