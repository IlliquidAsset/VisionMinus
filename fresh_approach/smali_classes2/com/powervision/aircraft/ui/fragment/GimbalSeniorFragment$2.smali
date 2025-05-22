.class Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$2;
.super Ljava/lang/Object;
.source "GimbalSeniorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    const-string v0, "PV_GIM_PITCH_EX"

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    :goto_0
    return-void
.end method
