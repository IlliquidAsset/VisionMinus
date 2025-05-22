.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->onConnectStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$isConnected:Z


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)V
    .locals 0

    .line 3191
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-boolean p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->val$isConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3194
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3195
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionListView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->val$isConnected:Z

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionListView;->setScanEnable(Z)V

    .line 3198
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->val$isConnected:Z

    const-string v1, "Con"

    if-eqz v0, :cond_3

    .line 3199
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_icon_quick_sonar:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3200
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3202
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 3205
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/CustomCycleLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3209
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 3210
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3219
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/condition/geo/GeoConditionMap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3220
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/condition/geo/GeoConditionMap;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/powervision/condition/geo/GeoConditionMap;->setCurrentDeep(D)V

    .line 3222
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3223
    :cond_5
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_icon_quick_sonar_disconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3224
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    const-string v1, "disCon"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3225
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarConnectState;->isIsMounted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3226
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/model/ship/ShipWarning;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    sget v4, Lcom/powervision/gcs/R$string;->PVW4_Msg_181:I

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    .line 3229
    :cond_6
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;)V

    invoke-static {v0}, Lcom/powervision/gcs/manager/ShipWarningManager;->setCommonListener(Lcom/powervision/opensource/CommonCallBack;)V

    :cond_7
    :goto_0
    return-void
.end method
