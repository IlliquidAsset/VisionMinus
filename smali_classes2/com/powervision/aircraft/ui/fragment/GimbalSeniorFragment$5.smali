.class Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$5;
.super Ljava/lang/Object;
.source "GimbalSeniorFragment.java"

# interfaces
.implements Lcom/powervision/base/utils/DialogUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->onClick(Landroid/view/View;)V
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

    .line 147
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->resetAllParam()I

    return-void
.end method
