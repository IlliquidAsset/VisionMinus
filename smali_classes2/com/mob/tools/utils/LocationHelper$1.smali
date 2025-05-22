.class Lcom/mob/tools/utils/LocationHelper$1;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/LocationHelper;->newCallback()Landroid/os/Handler$Callback;
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

    .line 33
    iput-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/LocationHelper;->access$000(Lcom/mob/tools/utils/LocationHelper;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LocationHelper;->access$100(Lcom/mob/tools/utils/LocationHelper;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LocationHelper;->access$200(Lcom/mob/tools/utils/LocationHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LocationHelper;->access$300(Lcom/mob/tools/utils/LocationHelper;)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LocationHelper;->access$400(Lcom/mob/tools/utils/LocationHelper;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 42
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LocationHelper;->access$500(Lcom/mob/tools/utils/LocationHelper;)Landroid/location/LocationManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LocationHelper;->access$500(Lcom/mob/tools/utils/LocationHelper;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/LocationHelper;->access$600(Lcom/mob/tools/utils/LocationHelper;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LocationHelper;->access$700(Lcom/mob/tools/utils/LocationHelper;)V

    goto :goto_0

    .line 48
    :cond_3
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LocationHelper;->access$700(Lcom/mob/tools/utils/LocationHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 51
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 52
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LocationHelper;->access$700(Lcom/mob/tools/utils/LocationHelper;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
