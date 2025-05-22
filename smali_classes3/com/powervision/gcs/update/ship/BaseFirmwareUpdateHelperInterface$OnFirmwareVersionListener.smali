.class public interface abstract Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelperInterface$OnFirmwareVersionListener;
.super Ljava/lang/Object;
.source "BaseFirmwareUpdateHelperInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelperInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFirmwareVersionListener"
.end annotation


# static fields
.field public static final ERROR_NO_VALUE:I = 0x2

.field public static final ERROR_TIMEOUT:I = 0x1


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onVersionGet(Ljava/lang/String;)V
.end method
