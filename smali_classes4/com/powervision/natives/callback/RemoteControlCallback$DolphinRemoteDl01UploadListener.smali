.class public interface abstract Lcom/powervision/natives/callback/RemoteControlCallback$DolphinRemoteDl01UploadListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DolphinRemoteDl01UploadListener"
.end annotation


# static fields
.field public static final PVSDK_REMOTE_DL01_UPLOAD_STATE_ENAFTP_ERROR:I = 0x1

.field public static final PVSDK_REMOTE_DL01_UPLOAD_STATE_ENAFTP_OK:I = 0x0

.field public static final PVSDK_REMOTE_DL01_UPLOAD_STATE_FTP_FAIL:I = 0x3

.field public static final PVSDK_REMOTE_DL01_UPLOAD_STATE_FTP_OK:I = 0x2

.field public static final PVSDK_REMOTE_DL01_UPLOAD_STATE_VERIFYMD5SUM_FAIL:I = 0x5

.field public static final PVSDK_REMOTE_DL01_UPLOAD_STATE_VERIFYMD5SUM_OK:I = 0x4


# virtual methods
.method public abstract dolphinRemoteDl01UploadState(I)V
.end method
