.class Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$3;
.super Ljava/lang/Object;
.source "GimbalSeniorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->onResume()V
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

    .line 120
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "PV_GIM_P_SMT"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    return-void
.end method
