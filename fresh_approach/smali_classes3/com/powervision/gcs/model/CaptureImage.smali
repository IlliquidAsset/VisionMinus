.class public Lcom/powervision/gcs/model/CaptureImage;
.super Ljava/lang/Object;
.source "CaptureImage.java"


# instance fields
.field public imgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/powervision/gcs/model/CaptureImage;->imgUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/powervision/gcs/model/CaptureImage;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/powervision/gcs/model/CaptureImage;->imgUrl:Ljava/lang/String;

    return-void
.end method
