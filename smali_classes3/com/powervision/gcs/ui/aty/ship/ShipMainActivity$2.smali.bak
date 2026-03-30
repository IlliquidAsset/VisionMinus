.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->zoneScan(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V
    .locals 1

    .line 1330
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mFunctionClose:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1331
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 1332
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$102(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 1318
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    const/4 v0, 0x0

    .line 1319
    invoke-static {v0}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    return-void
.end method

.method public onFishCheck(Z)V
    .locals 2

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    .line 1342
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarWindowView:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/SonarWindowView;->showOrHideFish(Z)V

    return-void
.end method

.method public onHide()V
    .locals 2

    .line 1297
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$102(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    .line 1298
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->val$view:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onPolygonAreaSelect()V
    .locals 3

    .line 1277
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v2, Lcom/powervision/gcs/R$raw;->area_scan:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SPHelperUtils;->showGuide(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {}, Lcom/powervision/gcs/config/GuideConfig;->getScanAreaMore()Lcom/powervision/gcs/model/event/GuideEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showGuide(Lcom/powervision/gcs/model/event/GuideEvent;)V

    goto :goto_0

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {}, Lcom/powervision/gcs/config/GuideConfig;->getCloseEvent()Lcom/powervision/gcs/model/event/GuideEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showGuide(Lcom/powervision/gcs/model/event/GuideEvent;)V

    .line 1284
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1402(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 1285
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1002(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPolygonAreaSelect: SCAN_TYPE = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lzqmission"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return-void

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1102(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 1291
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 1292
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {v0}, Lcom/powervision/condition/view/NationMapView;->onPolygonAreaSelect()V

    return-void
.end method

.method public onRectangleAreaSelect()V
    .locals 3

    .line 1244
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v2, Lcom/powervision/gcs/R$raw;->area_scan:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SPHelperUtils;->showGuide(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {}, Lcom/powervision/gcs/config/GuideConfig;->getScanArea()Lcom/powervision/gcs/model/event/GuideEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showGuide(Lcom/powervision/gcs/model/event/GuideEvent;)V

    goto :goto_0

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {}, Lcom/powervision/gcs/config/GuideConfig;->getCloseEvent()Lcom/powervision/gcs/model/event/GuideEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showGuide(Lcom/powervision/gcs/model/event/GuideEvent;)V

    .line 1251
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1002(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    .line 1252
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1102(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 1269
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {v0}, Lcom/powervision/condition/view/NationMapView;->onRectangleAreaSelect()V

    .line 1270
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 1271
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    return-void
.end method

.method public onScanDistanceChanged(I)V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1802(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    return-void
.end method

.method public onSpeedChanged(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x28

    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v2, Lcom/powervision/gcs/R$mipmap;->w4_speed_too_low:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SPHelperUtils;->showGuide(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    .line 1351
    invoke-static {v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->newInstance(I)Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;

    move-result-object v0

    .line 1352
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "speedTooLow"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p1, v0

    const v0, 0x3ecccccd    # 0.4f

    add-float/2addr p1, v0

    .line 1356
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2002(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;F)F

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1304
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isAIEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1600(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 1310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1311
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SPHelperUtils;->getUserInfo()Lcom/powervision/base/model/LoginModel;

    move-result-object v1

    iget-object v1, v1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

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

    .line 1313
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const-string v2, "pvw4_StartScanpath"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onTriangleAreaSelect()V
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    return-void
.end method
