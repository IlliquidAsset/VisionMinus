.class public interface abstract Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;
.super Ljava/lang/Object;
.source "NoFlyZoneCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/NoFlyZoneCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnSendNoFlyZoneFileStatusListener"
.end annotation


# static fields
.field public static final NOFLYZONE_STATUS_CHECK_MD5_FAILED:I = 0x4

.field public static final NOFLYZONE_STATUS_CHECK_MD5_SUCCESS:I = 0x3

.field public static final NOFLYZONE_STATUS_SENDING_DATA:I = 0x2

.field public static final NOFLYZONE_STATUS_SEND_DATA_FAILED:I = 0x1

.field public static final NOFLYZONE_STATUS_SEND_DATA_SUCCESS:I


# virtual methods
.method public abstract setNoflyzoneStatusCheckMd5Failed()V
.end method

.method public abstract setNoflyzoneStatusCheckMd5Success()V
.end method

.method public abstract setNoflyzoneStatusSendDataFailed(I)V
.end method

.method public abstract setNoflyzoneStatusSendDataSuccess()V
.end method

.method public abstract setNoflyzoneStatusSendingData(I)V
.end method
