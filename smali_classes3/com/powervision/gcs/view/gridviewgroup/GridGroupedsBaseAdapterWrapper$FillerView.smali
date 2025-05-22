.class public Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;
.super Landroid/view/View;
.source "GridGroupedsBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FillerView"
.end annotation


# instance fields
.field private mMeasureTarget:Landroid/view/View;

.field final synthetic this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;Landroid/content/Context;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 299
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 303
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 307
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 316
    iget-object p2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;->mMeasureTarget:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 318
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setMeasureTarget(Landroid/view/View;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;->mMeasureTarget:Landroid/view/View;

    return-void
.end method
