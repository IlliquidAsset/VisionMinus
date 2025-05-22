.class Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;
.super Ljava/lang/Object;
.source "ShipCheckFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->handleRemoteMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

.field final synthetic val$model:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    iput p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;->val$model:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 272
    iget v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;->val$model:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    .line 286
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 287
    invoke-static {}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    move-result-object v1

    new-instance v4, Lcom/powervision/natives/connect/ParamMsg;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "PV_RC_MODE"

    invoke-direct {v4, v5, v6, v0}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v4, v0}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;I)V

    const/4 v0, -0x1

    goto :goto_0

    .line 283
    :cond_0
    sget v0, Lcom/powervision/gcs/R$string;->ship_setting_remote_mode4:I

    goto :goto_0

    .line 280
    :cond_1
    sget v0, Lcom/powervision/gcs/R$string;->ship_setting_remote_mode3:I

    goto :goto_0

    .line 277
    :cond_2
    sget v0, Lcom/powervision/gcs/R$string;->ship_setting_remote_mode2:I

    goto :goto_0

    .line 274
    :cond_3
    sget v0, Lcom/powervision/gcs/R$string;->ship_setting_remote_mode1:I

    :goto_0
    if-eq v0, v3, :cond_6

    .line 291
    iget v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;->val$model:I

    if-ne v0, v2, :cond_5

    .line 292
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    move-result-object v0

    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->isRemoteRockerModeCommon()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_2:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_3:I

    :goto_1
    invoke-virtual {v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->setRemoteMode(Ljava/lang/String;)V

    goto :goto_2

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_3:I

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->setRemoteMode(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
