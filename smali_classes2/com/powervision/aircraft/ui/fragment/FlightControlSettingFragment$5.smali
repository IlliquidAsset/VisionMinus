.class Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$5;
.super Ljava/util/TimerTask;
.source "FlightControlSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->dealWithMessage(Landroid/os/Message;)V
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

    .line 181
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "GF_MAX_HOR_DIST"

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    return-void
.end method
