.class Lcom/powervision/home/ui/activity/HomeActivity$MyHandler;
.super Landroid/os/Handler;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/powervision/home/ui/activity/HomeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 1

    .line 925
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 926
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 934
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    const-string p1, "reomte_get"

    const-string v0, " ..remove.......3333333333333333333333"

    .line 935
    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 937
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/powervision/home/ui/activity/HomeActivity;->access$400(Lcom/powervision/home/ui/activity/HomeActivity;)V

    :cond_1
    return-void
.end method
