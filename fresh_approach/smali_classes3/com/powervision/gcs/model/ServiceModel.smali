.class public Lcom/powervision/gcs/model/ServiceModel;
.super Ljava/lang/Object;
.source "ServiceModel.java"


# instance fields
.field private isShowDivider:Z

.field private leftImg:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/powervision/gcs/model/ServiceModel;->isShowDivider:Z

    .line 18
    iput-object p2, p0, Lcom/powervision/gcs/model/ServiceModel;->title:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/powervision/gcs/model/ServiceModel;->leftImg:I

    return-void
.end method


# virtual methods
.method public getLeftImg()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/powervision/gcs/model/ServiceModel;->leftImg:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/gcs/model/ServiceModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isShowDivider()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/powervision/gcs/model/ServiceModel;->isShowDivider:Z

    return v0
.end method

.method public setLeftImg(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/powervision/gcs/model/ServiceModel;->leftImg:I

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/powervision/gcs/model/ServiceModel;->isShowDivider:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/gcs/model/ServiceModel;->title:Ljava/lang/String;

    return-void
.end method
