.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;
.super Ljava/lang/Object;
.source "ShipSonarSetFragment.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirCheckError()V
    .locals 2

    const-string v0, "ShipSonarSetFragment"

    const-string v1, "lzqW4_dl01_air onAirCheckError: "

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$202(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Z)Z

    .line 352
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    return-void
.end method

.method public onAirCheckOk()V
    .locals 2

    const-string v0, "ShipSonarSetFragment"

    const-string v1, "lzqW4_dl01_air onAirCheckOk: "

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$202(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Z)Z

    .line 359
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    return-void
.end method

.method public onAirDisconnect()V
    .locals 2

    const-string v0, "ShipSonarSetFragment"

    const-string v1, "onAirDisconnect: "

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$202(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Z)Z

    .line 324
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    return-void
.end method

.method public onConnectAirFailed()V
    .locals 2

    const-string v0, "ShipSonarSetFragment"

    const-string v1, "lzqW4_dl01_air onConnectAirFailed: "

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$202(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Z)Z

    .line 338
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    return-void
.end method

.method public onConnectAirSuccess()V
    .locals 2

    const-string v0, "ShipSonarSetFragment"

    const-string v1, "onConnectAirSuccess: "

    .line 311
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$202(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Z)Z

    .line 317
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    return-void
.end method

.method public onConnectAirTimeOut()V
    .locals 2

    const-string v0, "ShipSonarSetFragment"

    const-string v1, "onConnectAirTimeOut: "

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$202(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Z)Z

    .line 331
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V

    return-void
.end method
