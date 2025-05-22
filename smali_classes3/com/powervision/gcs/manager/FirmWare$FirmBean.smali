.class public Lcom/powervision/gcs/manager/FirmWare$FirmBean;
.super Ljava/lang/Object;
.source "FirmWare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/FirmWare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirmBean"
.end annotation


# instance fields
.field private FILE:Ljava/lang/String;

.field private MD5:Ljava/lang/String;

.field private VERSION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFILE()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->FILE:Ljava/lang/String;

    return-object v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->MD5:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public setFILE(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->FILE:Ljava/lang/String;

    return-void
.end method

.method public setMD5(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->MD5:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/powervision/gcs/manager/FirmWare$FirmBean;->VERSION:Ljava/lang/String;

    return-void
.end method
