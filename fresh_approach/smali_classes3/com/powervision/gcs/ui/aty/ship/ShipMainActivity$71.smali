.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$71;
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

    .line 8809
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$71;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 8812
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 8815
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/USBUtils;->isTetheringActive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8816
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->onNagetiveOfUsb1()V

    .line 8818
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$71;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V

    return-void
.end method
