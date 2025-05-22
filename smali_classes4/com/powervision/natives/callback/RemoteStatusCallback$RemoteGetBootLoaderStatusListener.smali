.class public interface abstract Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteGetBootLoaderStatusListener;
.super Ljava/lang/Object;
.source "RemoteStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteGetBootLoaderStatusListener"
.end annotation


# static fields
.field public static final COMMON_RESULT_FAILED:I = 0x2

.field public static final COMMON_RESULT_SUCCESS:I = 0x0

.field public static final COMMON_RESULT_TIMEOUT:I = 0x1


# virtual methods
.method public abstract onGetBootLoaderStatusResult(I)V
.end method
