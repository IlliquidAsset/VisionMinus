.class Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$11;
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

    .line 520
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$11;->this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 523
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$11;->this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const-string v0, "NEW_USER"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    return-void
.end method
