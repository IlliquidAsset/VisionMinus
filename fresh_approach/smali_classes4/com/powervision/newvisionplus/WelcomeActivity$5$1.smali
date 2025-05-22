.class Lcom/powervision/newvisionplus/WelcomeActivity$5$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/newvisionplus/WelcomeActivity$5;->onSucceed(Lcom/powervision/gcs/model/net/SplashImageModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/newvisionplus/WelcomeActivity$5;

.field final synthetic val$imageLocalUrl:Ljava/lang/String;

.field final synthetic val$imageNetUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/newvisionplus/WelcomeActivity$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5$1;->this$1:Lcom/powervision/newvisionplus/WelcomeActivity$5;

    iput-object p2, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5$1;->val$imageLocalUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5$1;->val$imageNetUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==pppppppppp=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5$1;->val$imageLocalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "welcomeTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5$1;->this$1:Lcom/powervision/newvisionplus/WelcomeActivity$5;

    iget-object v0, v0, Lcom/powervision/newvisionplus/WelcomeActivity$5;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    iget-object v1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5$1;->val$imageNetUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$600(Lcom/powervision/newvisionplus/WelcomeActivity;Ljava/lang/String;)V

    return-void
.end method
