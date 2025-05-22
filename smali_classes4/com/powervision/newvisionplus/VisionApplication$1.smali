.class Lcom/powervision/newvisionplus/VisionApplication$1;
.super Ljava/lang/Thread;
.source "VisionApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/newvisionplus/VisionApplication;->initBusinessInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/newvisionplus/VisionApplication;


# direct methods
.method constructor <init>(Lcom/powervision/newvisionplus/VisionApplication;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/powervision/newvisionplus/VisionApplication$1;->this$0:Lcom/powervision/newvisionplus/VisionApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/16 v0, 0xa

    .line 44
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-wide/16 v0, 0xbb8

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/powervision/newvisionplus/VisionApplication$1;->this$0:Lcom/powervision/newvisionplus/VisionApplication;

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/MobSDK;->getAppSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
