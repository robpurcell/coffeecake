<!DOCTYPE html>
<html>
<head>
    <r:require modules="angularTest"/>
    <r:layoutResources/>
</head>
<body ng-app="MyApp">
<div ng-controller="MyCtrl">
    What typed reflected below
 
    <input type="text" ng-model="myText"/>
 
    <span><b>{{myText}}</b></span>
</div>
</body>
<r:layoutResources/>
</html>
