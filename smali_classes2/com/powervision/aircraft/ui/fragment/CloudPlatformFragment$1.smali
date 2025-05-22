.class Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$1;
.super Ljava/lang/Object;
.source "CloudPlatformFragment.java"

# interfaces
.implements Lcom/powervision/base/utils/DialogUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->startUpGimbalCalibration()I

    return-void
.end method
