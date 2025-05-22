.class public interface abstract Lcom/powervision/natives/callback/DophinCallback$TFTPUploadListener;
.super Ljava/lang/Object;
.source "DophinCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/DophinCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TFTPUploadListener"
.end annotation


# static fields
.field public static final PVSDK_RAY_TFTP_CONN_ERR:I = 0x2

.field public static final PVSDK_RAY_TFTP_CONN_SUC:I = 0x3

.field public static final PVSDK_RAY_TFTP_FILE_ERR:I = 0x1

.field public static final PVSDK_RAY_TFTP_RECV_ERR:I = 0x5

.field public static final PVSDK_RAY_TFTP_RESET_ERR:I = 0x9

.field public static final PVSDK_RAY_TFTP_SEND_ERR:I = 0x4

.field public static final PVSDK_RAY_TFTP_SEND_TIMEOUT:I = 0x6

.field public static final PVSDK_RAY_TFTP_UPLOADING:I = 0x8

.field public static final PVSDK_RAY_TFTP_UPLOAD_SUC:I = 0x7


# virtual methods
.method public abstract upload(II)V
.end method
