.class Lcom/powervision/base/views/LiveStatusView$1;
.super Ljava/util/TimerTask;
.source "LiveStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/LiveStatusView;->startTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/LiveStatusView;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/LiveStatusView;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/powervision/base/views/LiveStatusView$1;->this$0:Lcom/powervision/base/views/LiveStatusView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 129
    new-instance v0, Lcom/powervision/base/views/LiveStatusView$1$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LiveStatusView$1$1;-><init>(Lcom/powervision/base/views/LiveStatusView$1;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
