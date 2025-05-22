.class public Lcom/powervision/gcs/view/ship/ShipVideoView;
.super Landroid/widget/VideoView;
.source "ShipVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {v0, p1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->getDefaultSize(II)I

    move-result p1

    .line 32
    invoke-static {v0, p2}, Lcom/powervision/gcs/view/ship/ShipVideoView;->getDefaultSize(II)I

    move-result p2

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setMeasuredDimension(II)V

    return-void
.end method
