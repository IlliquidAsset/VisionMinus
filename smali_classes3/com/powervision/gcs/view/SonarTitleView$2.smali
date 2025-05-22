.class Lcom/powervision/gcs/view/SonarTitleView$2;
.super Landroid/content/BroadcastReceiver;
.source "SonarTitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/SonarTitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarTitleView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarTitleView;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView$2;->this$0:Lcom/powervision/gcs/view/SonarTitleView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "SonarTitleView"

    const-string v0, "onReceive"

    .line 254
    invoke-static {p1, v0}, Lcom/powervision/gcs/utils/show/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView$2;->this$0:Lcom/powervision/gcs/view/SonarTitleView;

    invoke-static {p1}, Lcom/powervision/gcs/view/SonarTitleView;->access$000(Lcom/powervision/gcs/view/SonarTitleView;)V

    :cond_0
    return-void
.end method
