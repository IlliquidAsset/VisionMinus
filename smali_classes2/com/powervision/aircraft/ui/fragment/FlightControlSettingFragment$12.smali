.class Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$12;
.super Ljava/lang/Object;
.source "FlightControlSettingFragment.java"

# interfaces
.implements Lcom/powervision/base/utils/DialogUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch(Z)V
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

    .line 525
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$12;->this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 528
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$12;->this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
