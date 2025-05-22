.class public interface abstract Lcom/powervision/powersdk/callback/BaseStationCallback$FtpUploadListener;
.super Ljava/lang/Object;
.source "BaseStationCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/BaseStationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FtpUploadListener"
.end annotation


# static fields
.field public static final FILE_ERR:I = 0x0

.field public static final UPFAIL:I = 0x3

.field public static final UPLOADING:I = 0x1

.field public static final UPSUCCESS:I = 0x2


# virtual methods
.method public abstract upload(II)V
.end method
