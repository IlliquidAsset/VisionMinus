.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$9;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->addUploadMission(I)V
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

    .line 2575
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$9;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadFailed()V
    .locals 2

    const-string v0, "lzqMission"

    const-string v1, "\u4e0a\u4f20\u5931\u8d25"

    .line 2599
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$9;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    return-void
.end method

.method public uploadSuccess()V
    .locals 2

    const-string v0, "lzqMission"

    const-string v1, "\u4e0a\u4f20\u6210\u529f \u5207\u6a21\u5f0f"

    .line 2578
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$9;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    return-void
.end method

.method public uploadTimeOut()V
    .locals 2

    const-string v0, "lzqMission"

    const-string v1, "\u4e0a\u4f20\u8d85\u65f6"

    .line 2606
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$9;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4000(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    return-void
.end method
