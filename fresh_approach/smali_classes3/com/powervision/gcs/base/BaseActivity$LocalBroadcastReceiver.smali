.class Lcom/powervision/gcs/base/BaseActivity$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/base/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/base/BaseActivity;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseActivity$LocalBroadcastReceiver;->this$0:Lcom/powervision/gcs/base/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/base/BaseActivity;Lcom/powervision/gcs/base/BaseActivity$1;)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseActivity$LocalBroadcastReceiver;-><init>(Lcom/powervision/gcs/base/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 475
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7c7dd33a

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.kill.app.action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    goto :goto_1

    .line 481
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseActivity$LocalBroadcastReceiver;->this$0:Lcom/powervision/gcs/base/BaseActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/base/BaseActivity;->finish()V

    :goto_1
    return-void
.end method
