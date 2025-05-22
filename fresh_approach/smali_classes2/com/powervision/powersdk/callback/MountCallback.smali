.class public Lcom/powervision/powersdk/callback/MountCallback;
.super Ljava/lang/Object;
.source "MountCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/powersdk/callback/MountCallback$SetMountHookStateListener;,
        Lcom/powervision/powersdk/callback/MountCallback$InquirySoftVersionListener;,
        Lcom/powervision/powersdk/callback/MountCallback$InquiryHardVersionListener;,
        Lcom/powervision/powersdk/callback/MountCallback$InquireGpioParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$SetGpioParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$ReadSpiDataListener;,
        Lcom/powervision/powersdk/callback/MountCallback$ReadI2cDataListener;,
        Lcom/powervision/powersdk/callback/MountCallback$ReportMotorFaultAckListener;,
        Lcom/powervision/powersdk/callback/MountCallback$SendSpiDataAckListener;,
        Lcom/powervision/powersdk/callback/MountCallback$SendI2cDataAckListener;,
        Lcom/powervision/powersdk/callback/MountCallback$RecvCanDataListener;,
        Lcom/powervision/powersdk/callback/MountCallback$RecvUartDataListener;,
        Lcom/powervision/powersdk/callback/MountCallback$SendCanDataAckListener;,
        Lcom/powervision/powersdk/callback/MountCallback$SendUartDataAckListener;,
        Lcom/powervision/powersdk/callback/MountCallback$InquireMotorParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$InquireSpiParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$InquireI2cParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$InquireCanParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$CanFilterListener;,
        Lcom/powervision/powersdk/callback/MountCallback$InquireUartParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$SetMotorParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$SetSpiParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$SetI2cParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$SetCanParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$SetUartParamListener;,
        Lcom/powervision/powersdk/callback/MountCallback$MountStateDeviceListener;,
        Lcom/powervision/powersdk/callback/MountCallback$UnloadDeviceListener;,
        Lcom/powervision/powersdk/callback/MountCallback$LoadDeviceListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
