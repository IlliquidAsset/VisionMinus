.class Lcom/powervision/home/ui/activity/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/HomeActivity;->showIntentTips()V
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

    .line 530
    iput-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$4;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 533
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$4;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/base/utils/IntentUtil;->openUsbTetherSetting(Landroid/app/Activity;I)V

    return-void
.end method
