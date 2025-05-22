.class Lcom/powervision/home/ui/activity/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/HomeActivity;->showUsbTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$2;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 491
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$2;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    iget-object v0, p1, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {p1, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V

    .line 492
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$2;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    iget-object p1, p1, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    new-instance v0, Lcom/powervision/home/ui/activity/HomeActivity$2$1;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/HomeActivity$2$1;-><init>(Lcom/powervision/home/ui/activity/HomeActivity$2;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
