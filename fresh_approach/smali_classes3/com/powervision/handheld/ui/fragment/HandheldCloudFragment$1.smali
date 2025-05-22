.class Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$1;
.super Ljava/lang/Object;
.source "HandheldCloudFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->access$100(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->startUpGimbalCalibration()I

    .line 251
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->access$200(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)V

    return-void
.end method
