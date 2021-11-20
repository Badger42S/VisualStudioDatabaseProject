CREATE PROCEDURE AddressDelete
	@AddressesId int
AS
BEGIN
	SET NOCOUNT ON;
	Delete from [Addresses]
	where AddressesId = @AddressesId
END