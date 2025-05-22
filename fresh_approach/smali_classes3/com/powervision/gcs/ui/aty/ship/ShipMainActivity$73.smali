.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$73;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->hideUsbTips()V
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

    .line 8852
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$73;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 8855
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$73;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$73;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$73;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 8856
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$73;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v2, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V

    .line 8858
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$73;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$73;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$73;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 8859
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$73;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V

    :cond_1
    return-void
.end method
