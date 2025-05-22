.class public Lcom/powervision/gcs/manager/W4Firmware;
.super Ljava/lang/Object;
.source "W4Firmware.java"


# instance fields
.field public dir_abs:Ljava/lang/String;

.field public download_address:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public file_abs:Ljava/lang/String;

.field public hardware_type:Ljava/lang/String;

.field public hardware_type_abs:Ljava/lang/String;

.field public isForce:I

.field public md5:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type_abs:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/powervision/gcs/manager/W4Firmware;->download_address:Ljava/lang/String;

    .line 27
    iput p8, p0, Lcom/powervision/gcs/manager/W4Firmware;->isForce:I

    .line 28
    iput-object p9, p0, Lcom/powervision/gcs/manager/W4Firmware;->md5:Ljava/lang/String;

    return-void
.end method
