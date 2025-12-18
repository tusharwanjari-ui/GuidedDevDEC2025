CREATE OR ALTER VIEW dbo.UsrVwContactAgeDays
AS
SELECT
    Id          AS UsrId,
    Name        AS UsrName,
    BirthDate   AS UsrBirthDate,
    DATEDIFF(DAY, BirthDate, GETDATE()) AS UsrAgeDays,
    Id          AS UsrContactId
FROM dbo.Contact
WHERE BirthDate IS NOT NULL;
GO
