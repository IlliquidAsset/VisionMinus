.class Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$7;
.super Ljava/lang/Object;
.source "FlightControlSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 381
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 382
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;Z)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;Z)V

    goto :goto_0

    .line 388
    :cond_1
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Check_22:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    :goto_0
    return-void
.end method
