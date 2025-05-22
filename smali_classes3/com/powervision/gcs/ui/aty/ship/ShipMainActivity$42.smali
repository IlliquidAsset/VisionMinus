.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$42;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->setListener()V
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

    .line 5012
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$42;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 5015
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5018
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$42;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->paramLayout:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->DrawFish:Z

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/SonarParamQuickSetView;->setShowFish(Z)V

    .line 5020
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$42;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSonarSettingIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$42;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSonarSettingIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 5021
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$42;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSonarSettingIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$42;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSonarSettingIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 5022
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$42;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->paramLayout:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/powervision/gcs/view/SonarParamQuickSetView;->show(III)V

    return-void
.end method
