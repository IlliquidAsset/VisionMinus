.class Lcom/powervision/login/ui/activity/CreateLoginActivity$4;
.super Landroid/text/style/ClickableSpan;
.source "CreateLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/login/ui/activity/CreateLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;


# direct methods
.method constructor <init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$4;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 417
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$4;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    sget v0, Lcom/powervision/login/R$string;->APP_Login_11:I

    .line 418
    invoke-virtual {p1, v0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$4;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    sget v2, Lcom/powervision/login/R$string;->APP_Link_2:I

    invoke-virtual {v1, v2}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {p1, v0, v1}, Lcom/powervision/base/base/web/WebViewActivity;->jumpToWebViewActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 423
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 424
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity$4;->this$0:Lcom/powervision/login/ui/activity/CreateLoginActivity;

    sget v1, Lcom/powervision/login/R$color;->login_blue:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 425
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
