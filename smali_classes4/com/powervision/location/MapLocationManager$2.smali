.class Lcom/powervision/location/MapLocationManager$2;
.super Ljava/lang/Object;
.source "MapLocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


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

    .line 95
    iput-object p1, p0, Lcom/powervision/location/MapLocationManager$2;->this$0:Lcom/powervision/location/MapLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method
