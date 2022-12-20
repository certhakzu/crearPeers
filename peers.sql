USE PVelasquezBlending
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crearPeers(@PeerInicial INT, @PeerFinal INT)
AS

SET NOCOUNT ON;
DECLARE @PeerName VARCHAR(50);
DECLARE @TelephonyService VARCHAR(50) = 'TELEPHONY_PBX1';
DECLARE @Technology VARCHAR(50) = 'ASTERISK,SIP';
DECLARE @Codecs INT = 542;
DECLARE @LoginUser VARCHAR(50);
DECLARE @LoginPassword VARCHAR(50) = 'Qa$12Pl9&0';
DECLARE @AMIMonitored BIT = 0;

WHILE @PeerInicial <= @PeerFinal
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET @LoginUser = @PeerInicial;
	INSERT INTO  PVelasquezBlending.dbo.Peers(PeerName, TelephonyService, Technology, Codecs, LoginUser, LoginPassword, AMIMonitored)
	VALUES(@PeerInicial, @TelephonyService, @Technology, @Codecs, @LoginUser, @LoginPassword, @AMIMonitored)

	SET @PeerInicial = @PeerInicial + 1
END
SET NOCOUNT OFF;
GO