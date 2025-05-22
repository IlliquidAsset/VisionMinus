.class Lcom/mob/tools/utils/LocationHelper$2;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/LocationHelper;->newLocationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/LocationHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/LocationHelper;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/mob/tools/utils/LocationHelper$2;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper$2;->this$0:Lcom/mob/tools/utils/LocationHelper;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/utils/LocationHelper$2;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {v1}, Lcom/mob/tools/utils/LocationHelper;->access$500(Lcom/mob/tools/utils/LocationHelper;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 79
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/mob/tools/utils/LocationHelper$2;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {v1, p1}, Lcom/mob/tools/utils/LocationHelper;->access$802(Lcom/mob/tools/utils/LocationHelper;Landroid/location/Location;)Landroid/location/Location;

    .line 82
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$2;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 83
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    :try_start_3
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$2;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LocationHelper;->access$900(Lcom/mob/tools/utils/LocationHelper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 83
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 86
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
