.class public Lcom/powervision/gcs/model/ship/GuideBean;
.super Ljava/lang/Object;
.source "GuideBean.java"


# instance fields
.field private rawId:I

.field private showTip:Z

.field private subTitleTipId:I

.field private titleId:I

.field private titleTipId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/powervision/gcs/model/ship/GuideBean;->subTitleTipId:I

    return-void
.end method


# virtual methods
.method public getRawId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/powervision/gcs/model/ship/GuideBean;->rawId:I

    return v0
.end method

.method public getSubTitleTipId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/powervision/gcs/model/ship/GuideBean;->subTitleTipId:I

    return v0
.end method

.method public getTitleId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/powervision/gcs/model/ship/GuideBean;->titleId:I

    return v0
.end method

.method public getTitleTipId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/powervision/gcs/model/ship/GuideBean;->titleTipId:I

    return v0
.end method

.method public isShowTip()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/powervision/gcs/model/ship/GuideBean;->showTip:Z

    return v0
.end method

.method public setRawId(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/powervision/gcs/model/ship/GuideBean;->rawId:I

    return-void
.end method

.method public setShowTip(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/powervision/gcs/model/ship/GuideBean;->showTip:Z

    return-void
.end method

.method public setSubTitleTipId(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/powervision/gcs/model/ship/GuideBean;->subTitleTipId:I

    return-void
.end method

.method public setTitleId(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/gcs/model/ship/GuideBean;->titleId:I

    return-void
.end method

.method public setTitleTipId(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/model/ship/GuideBean;->titleTipId:I

    return-void
.end method
