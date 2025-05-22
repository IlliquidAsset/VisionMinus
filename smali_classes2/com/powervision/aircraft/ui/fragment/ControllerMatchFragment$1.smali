.class Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$1;
.super Ljava/lang/Object;
.source "ControllerMatchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/powervision/base/activity/QRControllerMatchActivity;->startCaptureActivity(Landroid/app/Activity;I)V

    return-void
.end method
