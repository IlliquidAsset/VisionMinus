.class public Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;
.super Ljava/lang/Object;
.source "GeoConditionMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/condition/geo/GeoConditionMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field onBubbleClickListener:Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;)V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;->context:Landroid/content/Context;

    .line 334
    iput-object p2, p0, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;->onBubbleClickListener:Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/airmap/R$layout;->mapwindow:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 342
    sget v1, Lcom/powervision/airmap/R$id;->map_win_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 343
    new-instance v2, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter$1;-><init>(Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;Lcom/google/android/gms/maps/model/Marker;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
