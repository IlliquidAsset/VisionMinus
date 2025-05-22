.class Lcom/powervision/base/base/BaseApplication$1;
.super Ljava/lang/Thread;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/base/BaseApplication;->initBusinessInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/base/BaseApplication;


# direct methods
.method constructor <init>(Lcom/powervision/base/base/BaseApplication;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/powervision/base/base/BaseApplication$1;->this$0:Lcom/powervision/base/base/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 167
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/16 v0, 0xa

    .line 170
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-wide/16 v0, 0xbb8

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
