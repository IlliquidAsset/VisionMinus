.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/opensource/onMapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->initViews(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 4467
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "lzqGeo"

    const-string v1, "mapLoaded"

    .line 4470
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance v1, Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-direct {v1, p1, v0}, Lcom/powervision/condition/geo/GeoConditionMap;-><init>(Ljava/lang/Object;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5302(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/condition/geo/GeoConditionMap;)Lcom/powervision/condition/geo/GeoConditionMap;

    .line 4472
    new-instance p1, Lcom/powervision/gcs/geo/GEO;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/condition/geo/GeoConditionMap;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/powervision/gcs/geo/GEO;-><init>(Lcom/powervision/condition/geo/GeoConditionMap;)V

    .line 4473
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/condition/geo/GeoConditionMap;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;)V

    invoke-virtual {p1, v0}, Lcom/powervision/condition/geo/GeoConditionMap;->setGeoOpInterface(Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;)V

    .line 4507
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/condition/geo/GeoConditionMap;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;)V

    invoke-virtual {p1, v0}, Lcom/powervision/condition/geo/GeoConditionMap;->setOnBubbleClickListener(Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;)V

    return-void
.end method
