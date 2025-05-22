.class public interface abstract Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;
.super Ljava/lang/Object;
.source "RemoteStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnRemoteKeyResultListener"
.end annotation


# static fields
.field public static final REMOTE_KEY_RESULT_CUSTOM:I = 0x2

.field public static final REMOTE_KEY_RESULT_RECORD:I = 0x1

.field public static final REMOTE_KEY_RESULT_TAKE_PIC:I = 0x0

.field public static final REMOTE_KEY_RESULT_UNKNOW:I = 0x3


# virtual methods
.method public abstract onRemoteCustomKey(I)V
.end method

.method public abstract onRemoteRecord()V
.end method

.method public abstract onRemoteTakePic()V
.end method

.method public abstract onRemoteUnknow()V
.end method
