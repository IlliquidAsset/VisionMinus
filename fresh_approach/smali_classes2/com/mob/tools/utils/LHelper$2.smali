.class Lcom/mob/tools/utils/LHelper$2;
.super Ljava/lang/Object;
.source "LHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/LHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/LHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/LHelper;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mob/tools/utils/LHelper$2;->this$0:Lcom/mob/tools/utils/LHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/LHelper$2;->this$0:Lcom/mob/tools/utils/LHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/LHelper;->access$400(Lcom/mob/tools/utils/LHelper;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 68
    iget-object v0, p0, Lcom/mob/tools/utils/LHelper$2;->this$0:Lcom/mob/tools/utils/LHelper;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/LHelper;->access$502(Lcom/mob/tools/utils/LHelper;Landroid/location/Location;)Landroid/location/Location;

    .line 69
    iget-object v0, p0, Lcom/mob/tools/utils/LHelper$2;->this$0:Lcom/mob/tools/utils/LHelper;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/LHelper;->access$602(Lcom/mob/tools/utils/LHelper;Landroid/location/Location;)Landroid/location/Location;

    .line 70
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper$2;->this$0:Lcom/mob/tools/utils/LHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/mob/tools/utils/LHelper;->access$702(Lcom/mob/tools/utils/LHelper;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper$2;->this$0:Lcom/mob/tools/utils/LHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LHelper;->access$300(Lcom/mob/tools/utils/LHelper;)V

    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/mob/tools/utils/LHelper$2;->this$0:Lcom/mob/tools/utils/LHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/LHelper;->access$300(Lcom/mob/tools/utils/LHelper;)V

    throw p1
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
