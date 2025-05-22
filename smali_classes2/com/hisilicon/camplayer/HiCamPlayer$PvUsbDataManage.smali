.class public interface abstract Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;
.super Ljava/lang/Object;
.source "HiCamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/camplayer/HiCamPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PvUsbDataManage"
.end annotation


# virtual methods
.method public abstract pv_usb_recv_data()[B
.end method

.method public abstract pv_usb_recv_max_data(I[I)[B
.end method

.method public abstract pv_usb_send_data([B)V
.end method
