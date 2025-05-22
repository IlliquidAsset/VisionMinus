.class Lcom/powervision/login/ui/activity/InputVerifyCodeActivity$1;
.super Landroid/os/CountDownTimer;
.source "InputVerifyCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->timeStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;


# direct methods
.method constructor <init>(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;JJ)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity$1;->this$0:Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity$1;->this$0:Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;

    invoke-static {v0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->access$000(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity$1;->this$0:Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;

    invoke-static {v0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->access$000(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity$1;->this$0:Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;

    sget v3, Lcom/powervision/login/R$string;->APP_Login_47:I

    invoke-virtual {v2, v3}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity$1;->this$0:Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;

    invoke-static {v0, v1}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->access$102(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;Z)Z

    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity$1;->this$0:Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;

    invoke-static {v0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->access$000(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity$1;->this$0:Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;

    invoke-virtual {v1}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/login/R$string;->APP_Login_46:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
