.class Lcom/powervision/home/ui/activity/HomeActivity$2$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/HomeActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/home/ui/activity/HomeActivity$2;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity$2;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$2$1;->this$1:Lcom/powervision/home/ui/activity/HomeActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$2$1;->this$1:Lcom/powervision/home/ui/activity/HomeActivity$2;

    iget-object v0, v0, Lcom/powervision/home/ui/activity/HomeActivity$2;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/powervision/home/ui/activity/HomeActivity;->showIntentTips()V

    return-void
.end method
