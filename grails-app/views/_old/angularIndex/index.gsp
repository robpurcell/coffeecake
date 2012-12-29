<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    %{--<r:require modules="bootstrap"/>--}%
    <r:require modules="app"/>
</head>

<body ng-app="MyApp">
    <div ng-controller="MyCtrl">

        <input type="text" ng-model="myText" placeholder="Enter something here!"/>

        <span><b>{{myText}}</b></span>
    </div>
</body>
</html>
