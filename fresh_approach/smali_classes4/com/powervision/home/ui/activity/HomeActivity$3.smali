.class Lcom/powervision/home/ui/activity/HomeActivity$3;
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

    .line 502
    iput-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$3;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 505
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$3;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    iget-object v0, p1, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {p1, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V

    return-void
.end method
