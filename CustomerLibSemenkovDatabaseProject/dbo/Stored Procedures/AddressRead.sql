CREATE PROCEDURE AddressRead
	@AddressesId int
AS
BEGIN
	SET NOCOUNT ON;
	Select * from [Addresses] 
	where AddressesId = @AddressesId
END