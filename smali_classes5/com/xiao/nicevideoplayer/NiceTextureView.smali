.class public Lcom/xiao/nicevideoplayer/NiceTextureView;
.super Landroid/view/TextureView;
.source "NiceTextureView.java"


# instance fields
.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public adaptVideoSize(II)V
    .locals 1

    .line 21
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoWidth:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoHeight:I

    if-eq v0, p2, :cond_0

    .line 22
    iput p1, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoWidth:I

    .line 23
    iput p2, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoHeight:I

    .line 24
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceTextureView;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 39
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceTextureView;->getRotation()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    move v5, p2

    move p2, p1

    move p1, v5

    .line 48
    :cond_1
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoWidth:I

    invoke-static {v0, p1}, Lcom/xiao/nicevideoplayer/NiceTextureView;->getDefaultSize(II)I

    move-result v0

    .line 49
    iget v1, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoHeight:I

    invoke-static {v1, p2}, Lcom/xiao/nicevideoplayer/NiceTextureView;->getDefaultSize(II)I

    move-result v1

    .line 50
    iget v2, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoWidth:I

    if-lez v2, :cond_b

    iget v2, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoHeight:I

    if-lez v2, :cond_b

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 54
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_4

    if-ne v1, v2, :cond_4

    .line 62
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoWidth:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoHeight:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_2

    mul-int v0, v0, p2

    .line 63
    div-int/2addr v0, v2

    goto :goto_1

    :cond_2
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_3

    mul-int v2, v2, p1

    .line 65
    div-int v1, v2, v0

    :goto_0
    move v0, p1

    goto :goto_3

    :cond_3
    move v0, p1

    :goto_1
    move v1, p2

    goto :goto_3

    :cond_4
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_6

    .line 70
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoHeight:I

    mul-int v2, p1, v0

    iget v4, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoWidth:I

    div-int/2addr v2, v4

    if-ne v1, v3, :cond_5

    if-le v2, p2, :cond_5

    mul-int v4, v4, p2

    .line 74
    div-int v0, v4, v0

    goto :goto_1

    :cond_5
    move v0, p1

    move v1, v2

    goto :goto_3

    :cond_6
    if-ne v1, v2, :cond_9

    .line 79
    iget v1, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoWidth:I

    mul-int v2, p2, v1

    iget v4, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoHeight:I

    div-int/2addr v2, v4

    if-ne v0, v3, :cond_7

    if-le v2, p1, :cond_7

    mul-int v4, v4, p1

    .line 83
    div-int v1, v4, v1

    goto :goto_0

    :cond_7
    move v1, p2

    :cond_8
    move v0, v2

    goto :goto_3

    .line 87
    :cond_9
    iget v2, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoWidth:I

    .line 88
    iget v4, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoHeight:I

    if-ne v1, v3, :cond_a

    if-le v4, p2, :cond_a

    mul-int v2, v2, p2

    .line 92
    div-int/2addr v2, v4

    move v1, p2

    goto :goto_2

    :cond_a
    move v1, v4

    :goto_2
    if-ne v0, v3, :cond_8

    if-le v2, p1, :cond_8

    .line 97
    iget p2, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoHeight:I

    mul-int p2, p2, p1

    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceTextureView;->videoWidth:I

    div-int v1, p2, v0

    goto :goto_0

    .line 103
    :cond_b
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/xiao/nicevideoplayer/NiceTextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceTextureView;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 31
    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    .line 32
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceTextureView;->requestLayout()V

    :cond_0
    return-void
.end method
