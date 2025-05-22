.class public interface abstract Lcom/powervision/powersdk/callback/MissionCallback$MissionListener;
.super Ljava/lang/Object;
.source "MissionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/MissionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MissionListener"
.end annotation


# static fields
.field public static final PVSDK_MISSION_CLEAR_SUCCESS:I = 0x1

.field public static final PVSDK_MISSION_CURRENT:I = 0x0

.field public static final PVSDK_MISSION_DOWNLOAD_ERROR:I = 0x6

.field public static final PVSDK_MISSION_DOWNLOAD_SUCCESS:I = 0x5

.field public static final PVSDK_MISSION_RECEIVE_SUCCESS:I = 0x3

.field public static final PVSDK_MISSION_SEND_ERROR:I = 0x4

.field public static final PVSDK_MISSION_SEND_SUCCESS:I = 0x2

.field public static final PVSDK_MISSION_SEND_TIMEOUT:I = -0x1


# virtual methods
.method public abstract onMissionClearSuccess()V
.end method

.method public abstract onMissionCurrent()V
.end method

.method public abstract onMissionDownloadFailed()V
.end method

.method public abstract onMissionDownloadSuccess()V
.end method

.method public abstract onMissionReceiveSuccess()V
.end method

.method public abstract onMissionSendFailed()V
.end method

.method public abstract onMissionSendSuccess()V
.end method

.method public abstract onMissionSendTimeout()V
.end method
