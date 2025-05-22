.class public interface abstract Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;
.super Ljava/lang/Object;
.source "RemoteStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnRemoteCalibraResultListener"
.end annotation


# static fields
.field public static final REMOTE_CALIBRA_COMPLETE_FAILED:I = 0x4

.field public static final REMOTE_CALIBRA_COMPLETE_SUCCESS:I = 0x3

.field public static final REMOTE_CALIBRA_COMPLETE_TIMEOUT:I = 0x5

.field public static final REMOTE_CALIBRA_EXTREMADONE:I = 0x2

.field public static final REMOTE_CALIBRA_START_FAILED:I = 0x1

.field public static final REMOTE_CALIBRA_START_SUCCESS:I


# virtual methods
.method public abstract onRemoteCalibraCompleteFailed()V
.end method

.method public abstract onRemoteCalibraCompleteSuccess()V
.end method

.method public abstract onRemoteCalibraExtremadone()V
.end method

.method public abstract onRemoteCalibraStartFailed()V
.end method

.method public abstract onRemoteCalibraStartSuccess()V
.end method

.method public abstract onRemoteCalibraTimeout()V
.end method
