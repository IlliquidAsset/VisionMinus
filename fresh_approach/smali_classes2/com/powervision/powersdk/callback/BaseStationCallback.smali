.class public Lcom/powervision/powersdk/callback/BaseStationCallback;
.super Ljava/lang/Object;
.source "BaseStationCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundMcuUpgradePercentListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundMainControlUpgradePercentListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$FtpUploadListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$FtpConnListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$RayPairRemodeControlListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$RayPairFishFinderListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$RayDolphinCurrentFishViewListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$RayConnectionTerminalListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$RayBaseStationVerListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetVideoRateListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetVideoRateListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetVideoResolutionListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetVideoResolutionListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$ApplyRFConfigListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetRFTxPowerListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetRFTxPowerListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetRFChannelListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetRFChannelListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$PairRFListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$ApplyAirRFConfigListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$RebootAirRFListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$ResetAirRFListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirRFSignalQualityListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirRFSWVersionListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirRFHWVersionListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirMainCtrlSWVersionListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirMainCtrlHWVersionListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetRFNetworkIdListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetRFNetworkIdListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetAirNetworkIdListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirNetworkIdListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetAirSNListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirSNListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetAirCountryCodeListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirCountryCodeListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetAirModelListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirModelListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetAirTxPowerListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirTxPowerListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetAirChannelListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetAirChannelListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$ApplyGroundRFConfigListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$RebootGroundRFListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$ResetGroundRFListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundBatteryPowerListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundRFSignalQualityListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundRFSWVersionListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundRFHWVersionListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundMainCtrlSWVersionListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundMainCtrlHWVersionListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetGroundNetworkIdListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundNetworkIdListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetGroundSNListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundSNListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundModelListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetGroundCountryCodeListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundCountryCodeListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetGroundTxPowerListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundTxPowerListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetGroundChannelListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetGroundChannelListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetApConnectStatusListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$ApplyApConfigListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetApPasswordListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetApPasswordListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$SetApSSIDListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$GetApSSIDListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$IsPvLinkListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$ConnectedToAirListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$ConnectedToGroundListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$DisconnectToAirListener;,
        Lcom/powervision/powersdk/callback/BaseStationCallback$DisconnectToGroundListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
