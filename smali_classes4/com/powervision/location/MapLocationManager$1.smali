.class Lcom/powervision/location/MapLocationManager$1;
.super Ljava/lang/Object;
.source "MapLocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/location/MapLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/location/MapLocationManager;


# direct methods
.method constructor <init>(Lcom/powervision/location/MapLocationManager;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/powervision/location/MapLocationManager$1;->this$0:Lcom/powervision/location/MapLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/powervision/location/MapLocationManager$1;->this$0:Lcom/powervision/location/MapLocationManager;

    invoke-static {p1}, Lcom/powervision/location/MapLocationManager;->access$000(Lcom/powervision/location/MapLocationManager;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
