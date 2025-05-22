.class Lcom/powervision/user/ui/activity/EmailBindActivity$1;
.super Landroid/os/CountDownTimer;
.source "EmailBindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/ui/activity/EmailBindActivity;->timeStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/ui/activity/EmailBindActivity;


# direct methods
.method constructor <init>(Lcom/powervision/user/ui/activity/EmailBindActivity;JJ)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/powervision/user/ui/activity/EmailBindActivity$1;->this$0:Lcom/powervision/user/ui/activity/EmailBindActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/powervision/user/ui/activity/EmailBindActivity$1;->this$0:Lcom/powervision/user/ui/activity/EmailBindActivity;

    invoke-static {v0}, Lcom/powervision/user/ui/activity/EmailBindActivity;->access$000(Lcom/powervision/user/ui/activity/EmailBindActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/powervision/user/ui/activity/EmailBindActivity$1;->this$0:Lcom/powervision/user/ui/activity/EmailBindActivity;

    invoke-static {v0}, Lcom/powervision/user/ui/activity/EmailBindActivity;->access$000(Lcom/powervision/user/ui/activity/EmailBindActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/user/ui/activity/EmailBindActivity$1;->this$0:Lcom/powervision/user/ui/activity/EmailBindActivity;

    sget v2, Lcom/powervision/user/R$string;->APP_Login_19:I

    invoke-virtual {v1, v2}, Lcom/powervision/user/ui/activity/EmailBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/powervision/user/ui/activity/EmailBindActivity$1;->this$0:Lcom/powervision/user/ui/activity/EmailBindActivity;

    invoke-static {v0}, Lcom/powervision/user/ui/activity/EmailBindActivity;->access$000(Lcom/powervision/user/ui/activity/EmailBindActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "%d s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
