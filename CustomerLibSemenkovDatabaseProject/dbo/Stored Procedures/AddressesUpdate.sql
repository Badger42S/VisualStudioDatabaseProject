CREATE PROCEDURE AddressesUpdate
	@AddressesId int
	, @CustomerId int
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
	update [Addresses] 
	set CustomerId = @CustomerId, [Address Line] = @Address_Line, [Address Line2 ] = @Address_Line2, [Address Type] = @Address_Type, 
		City = @City, [Postal Code] = @Postal_Code, [State] = @State, [Country] = @Country
	where AddressesId = @AddressesId
END