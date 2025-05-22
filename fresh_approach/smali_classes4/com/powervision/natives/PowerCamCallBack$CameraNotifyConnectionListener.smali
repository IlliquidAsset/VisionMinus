.class public interface abstract Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;
.super Ljava/lang/Object;
.source "PowerCamCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/PowerCamCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraNotifyConnectionListener"
.end annotation


# static fields
.field public static final CONNECTION_FAIL:I = 0x2

.field public static final CONNECTION_SUCCESS:I = 0x0

.field public static final CONNECTION_TIMEOUT:I = 0x1

.field public static final DISCONNECTION:I = 0x3

.field public static final HEART_TIMEOUT:I = 0x4


# virtual methods
.method public abstract connection(I)V
.end method
