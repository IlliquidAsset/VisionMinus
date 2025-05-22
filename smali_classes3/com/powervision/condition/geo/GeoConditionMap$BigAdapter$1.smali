.class Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter$1;
.super Ljava/lang/Object;
.source "GeoConditionMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;->getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;

.field final synthetic val$marker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method constructor <init>(Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter$1;->this$0:Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;

    iput-object p2, p0, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter$1;->val$marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 346
    iget-object p1, p0, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter$1;->this$0:Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;

    iget-object p1, p1, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;->onBubbleClickListener:Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;

    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter$1;->val$marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter$1;->val$marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;->bubbleClick(DD)V

    return-void
.end method
