.class Lcom/powervision/home/ui/activity/AP03ActivationActivity$1;
.super Ljava/util/TimerTask;
.source "AP03ActivationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/AP03ActivationActivity;->lambda$null$0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/AP03ActivationActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/AP03ActivationActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity$1;->this$0:Lcom/powervision/home/ui/activity/AP03ActivationActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf22

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method
