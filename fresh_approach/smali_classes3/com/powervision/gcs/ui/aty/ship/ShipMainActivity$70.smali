.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$70;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showIntentTips()V
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

    .line 8799
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$70;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 8802
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 8805
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$70;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/base/utils/IntentUtil;->openUsbTetherSetting(Landroid/app/Activity;I)V

    return-void
.end method
