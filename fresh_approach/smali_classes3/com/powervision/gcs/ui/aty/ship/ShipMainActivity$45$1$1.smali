.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;->onSailModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;I)V
    .locals 0

    .line 5231
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;

    iput p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5234
    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->val$mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5236
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SPHelperUtils;->getUserInfo()Lcom/powervision/base/model/LoginModel;

    move-result-object v1

    iget-object v1, v1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/utils/SPHelperUtils;->getPsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SNcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5238
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const-string v2, "pvw4_returnToLand_LowBattery"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 5239
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    goto :goto_0

    .line 5243
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/utils/ShipMessageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getModeErrorMsg()Lcom/powervision/gcs/model/ship/ShipWarning;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    .line 5245
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$45$1$1;->val$mode:I

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)V

    return-void
.end method
