.class public Lcom/powervision/gcs/manager/Description;
.super Ljava/lang/Object;
.source "Description.java"


# instance fields
.field private en:Ljava/lang/String;

.field private ja:Ljava/lang/String;

.field private zh:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEn()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/powervision/gcs/manager/Description;->en:Ljava/lang/String;

    return-object v0
.end method

.method public getJa()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/powervision/gcs/manager/Description;->ja:Ljava/lang/String;

    return-object v0
.end method

.method public getZh()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/powervision/gcs/manager/Description;->zh:Ljava/lang/String;

    return-object v0
.end method

.method public setEn(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/manager/Description;->en:Ljava/lang/String;

    return-void
.end method

.method public setJa(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/powervision/gcs/manager/Description;->ja:Ljava/lang/String;

    return-void
.end method

.method public setZh(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/powervision/gcs/manager/Description;->zh:Ljava/lang/String;

    return-void
.end method
