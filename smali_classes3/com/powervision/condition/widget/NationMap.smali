.class public Lcom/powervision/condition/widget/NationMap;
.super Landroid/widget/FrameLayout;
.source "NationMap.java"


# instance fields
.field private mMapView:Lcom/google/android/gms/maps/MapView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 26
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/powervision/condition/widget/NationMap;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/powervision/condition/widget/NationMap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/airmap/R$layout;->map_google_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    sget v0, Lcom/powervision/airmap/R$id;->map_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/condition/widget/NationMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lcom/powervision/condition/widget/NationMap;->mMapView:Lcom/google/android/gms/maps/MapView;

    return-void
.end method
