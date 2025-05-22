.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showUsbTips()V
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

    .line 8754
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 8757
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 8760
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V

    .line 8761
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
