.class public interface abstract Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;
.super Ljava/lang/Object;
.source "RemoteStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyonRemoteParameterResultIntListener"
.end annotation


# static fields
.field public static final REMOTE_PARAMETER_STATUS_DOWNLOAD_FAIL:I = 0x3

.field public static final REMOTE_PARAMETER_STATUS_DOWNLOAD_SUCCESS:I = 0x1

.field public static final REMOTE_PARAMETER_STATUS_DOWNLOAD_TIMEOUT:I = 0x5

.field public static final REMOTE_PARAMETER_STATUS_UPLOAD_FAIL:I = 0x2

.field public static final REMOTE_PARAMETER_STATUS_UPLOAD_SUCCESS:I = 0x0

.field public static final REMOTE_PARAMETER_STATUS_UPLOAD_TIMEOUT:I = 0x4


# virtual methods
.method public abstract onRemoteParameterDownloadFailed(Ljava/lang/String;I)V
.end method

.method public abstract onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V
.end method

.method public abstract onRemoteParameterDownloadTimeOut()V
.end method

.method public abstract onRemoteParameterUploadFailed(Ljava/lang/String;I)V
.end method

.method public abstract onRemoteParameterUploadSuccess(Ljava/lang/String;I)V
.end method

.method public abstract onRemoteParameterUploadTimeOut()V
.end method
