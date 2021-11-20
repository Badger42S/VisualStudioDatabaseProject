CREATE PROCEDURE AddressesCreate
	@CustomerId int
	, @Address_Line nvarchar (100)
	, @Address_Line2 nvarchar (100) = null
	, @Address_Type nvarchar (8)
	, @City nvarchar (100)
	, @Postal_Code nvarchar (6)
	, @State nvarchar (15)
	, @Country nvarchar (14)
AS
BEGIN
	SET NOCOUNT ON;
	insert into [Addresses] (CustomerId, [Address Line], [Address Line2 ], [Address Type], City, [Postal Code], [State], [Country])
	values (@CustomerId, @Address_Line, @Address_Line2, @Address_Type, @City, @Postal_Code, @State, @Country)
END