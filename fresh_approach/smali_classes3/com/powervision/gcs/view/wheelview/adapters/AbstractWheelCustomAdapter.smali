.class public abstract Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;
.super Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;
.source "AbstractWheelCustomAdapter.java"


# static fields
.field protected static final NO_RESOURCE:I


# instance fields
.field protected context:Landroid/content/Context;

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemResourceId:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->context:Landroid/content/Context;

    .line 71
    iput p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->itemResourceId:I

    const-string p2, "layout_inflater"

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;-><init>(Landroid/view/LayoutInflater;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;I)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 91
    iput p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->itemResourceId:I

    return-void
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected abstract configureItemView(Landroid/view/View;I)V
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    .line 143
    iget p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->emptyItemResourceId:I

    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getEmptyItemResource()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->emptyItemResourceId:I

    return v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    if-ltz p1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->getItemsCount()I

    move-result p4

    if-ge p1, p4, :cond_1

    if-nez p2, :cond_0

    .line 130
    iget p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->itemResourceId:I

    invoke-direct {p0, p2, p3}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 133
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->configureItemView(Landroid/view/View;I)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemResource()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->itemResourceId:I

    return v0
.end method

.method public setEmptyItemResource(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->emptyItemResourceId:I

    return-void
.end method

.method public setItemResource(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelCustomAdapter;->itemResourceId:I

    return-void
.end method
