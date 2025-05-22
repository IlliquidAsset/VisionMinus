.class public Lcom/powervision/gcs/manager/FirmWare;
.super Ljava/lang/Object;
.source "FirmWare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/manager/FirmWare$FirmBean;
    }
.end annotation


# instance fields
.field private DL01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;"
        }
    .end annotation
.end field

.field private MCU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;"
        }
    .end annotation
.end field

.field private WIFI_1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;"
        }
    .end annotation
.end field

.field private WIFI_2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDL01()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/powervision/gcs/manager/FirmWare;->DL01:Ljava/util/List;

    return-object v0
.end method

.method public getMCU()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/powervision/gcs/manager/FirmWare;->MCU:Ljava/util/List;

    return-object v0
.end method

.method public getWIFI_1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/powervision/gcs/manager/FirmWare;->WIFI_1:Ljava/util/List;

    return-object v0
.end method

.method public getWIFI_2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/powervision/gcs/manager/FirmWare;->WIFI_2:Ljava/util/List;

    return-object v0
.end method

.method public setDL01(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/powervision/gcs/manager/FirmWare;->DL01:Ljava/util/List;

    return-void
.end method

.method public setMCU(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/manager/FirmWare;->MCU:Ljava/util/List;

    return-void
.end method

.method public setWIFI_1(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/powervision/gcs/manager/FirmWare;->WIFI_1:Ljava/util/List;

    return-void
.end method

.method public setWIFI_2(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmWare$FirmBean;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/powervision/gcs/manager/FirmWare;->WIFI_2:Ljava/util/List;

    return-void
.end method
