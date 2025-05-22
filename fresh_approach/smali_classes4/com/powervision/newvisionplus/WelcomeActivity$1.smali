.class Lcom/powervision/newvisionplus/WelcomeActivity$1;
.super Lcom/powervision/gcs/utils/CountDownTimer;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/newvisionplus/WelcomeActivity;->startCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/newvisionplus/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/powervision/newvisionplus/WelcomeActivity;JJ)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$1;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/powervision/gcs/utils/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "welcomeTest"

    const-string v1, " \u8bfb\u79d2\u7ed3\u675f "

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$1;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {v0}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "millisUntilFinished:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "welcomeTest"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$1;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {v0}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    .line 222
    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    .line 223
    div-long v1, p1, v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$1;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {v1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 227
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$1;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
