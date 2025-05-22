.class Lcom/powervision/condition/view/NationMapView$4;
.super Ljava/lang/Object;
.source "NationMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/condition/view/NationMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/view/NationMapView;


# direct methods
.method constructor <init>(Lcom/powervision/condition/view/NationMapView;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$4;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    const-string p1, "NationMapView"

    const-string v0, "onMapClick: "

    .line 880
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
