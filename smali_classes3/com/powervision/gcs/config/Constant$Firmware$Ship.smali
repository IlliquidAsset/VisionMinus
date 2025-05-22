.class public Lcom/powervision/gcs/config/Constant$Firmware$Ship;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/config/Constant$Firmware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ship"
.end annotation


# static fields
.field public static SHIP_BODY_FIRMWARE:Ljava/lang/String; = "ship_body_firmware.bin"

.field public static SHIP_DL01_REMOTE_FIRMWARE:Ljava/lang/String; = "DL01-client-sysupgrade.bin"

.field public static final SHIP_FIRWARE_ZIP_FILENAME:Ljava/lang/String; = "Remote.zip"

.field public static SHIP_MCU_REMOTE_FIRMWARE:Ljava/lang/String; = "app-103_fda88dfd254fa0c38285aecd26d8ca0c.bin"

.field public static SHIP_WIFI_REMOTE_FIRMWARE_1:Ljava/lang/String; = "mi124_f1e-jffs2"

.field public static SHIP_WIFI_REMOTE_FIRMWARE_2:Ljava/lang/String; = "vmlinux_mi124_f1e.lzma.uImage"

.field public static SHIP_WIFI_REMOTE_MD5:Ljava/lang/String; = "9342upgrademd5"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
