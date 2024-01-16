SELECT D.GroupName AS DepartmentGroup
    , COUNT(*) AS Employees
FROM HumanResources.Employee AS E
    INNER JOIN HumanResources.EmployeeDepartmentHistory AS H
        ON E.BusinessEntityID = H.BusinessEntityID
    INNER JOIN HumanResources.Department AS D
        ON H.DepartmentID = D.DepartmentID
GROUP BY D.GroupName
ORDER BY 2;

SELECT D.GroupName AS DepartmentGroup
    , COUNT(*) AS Employees
FROM HumanResources.Employee AS E
    INNER JOIN HumanResources.EmployeeDepartmentHistory AS H
        ON E.BusinessEntityID = H.BusinessEntityID
    INNER JOIN HumanResources.Department AS D
        ON H.DepartmentID = D.DepartmentID
GROUP BY D.GroupName
ORDER BY 2;

 SELECT Gender, COUNT(*) as Total
    FROM HumanResources.Employee
    GROUP BY Gender

SELECT SUM(SickLeaveHours) AS TotalSickLeaveHours
      ,AVG(SickLeaveHours) AS AVGSickLeaveHours
	  ,SUM(VacationHours) AS TotalVacationHours
	  ,AVG(VacationHours) AS AVGVacationHours
	  ,Gender
FROM HumanResources.Employee
GROUP BY Gender

SELECT TOP 10 
        BusinessEntityID
	  , FirstName
      , MiddleName
      , LastName
FROM Person.Person
ORDER BY NEWID();

SELECT BusinessEntityID
   ,JobTitle
   ,BirthDate
   ,Gender
   ,VacationHours
   ,SickLeaveHours

FROM HumanResources . Employee

SELECT COUNT(BusinessEntityID) AS Numbe
    ,Gender
	,COUNT(BusinessEntityID)/290.0*100 AS Percentage
FROM HumanResources.Employee
GROUP BY Gender

SELECT TOP 10
    BusinessEntityID,
    SickLeaveHours,
    VacationHours,
    Gender
FROM
    HumanResources.Employee
ORDER BY
    SickLeaveHours DESC, VacationHours DESC;