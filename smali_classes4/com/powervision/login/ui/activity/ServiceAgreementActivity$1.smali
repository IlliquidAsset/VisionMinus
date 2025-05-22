.class Lcom/powervision/login/ui/activity/ServiceAgreementActivity$1;
.super Landroid/text/style/ClickableSpan;
.source "ServiceAgreementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/login/ui/activity/ServiceAgreementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/ui/activity/ServiceAgreementActivity;


# direct methods
.method constructor <init>(Lcom/powervision/login/ui/activity/ServiceAgreementActivity;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity$1;->this$0:Lcom/powervision/login/ui/activity/ServiceAgreementActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 138
    iget-object p1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity$1;->this$0:Lcom/powervision/login/ui/activity/ServiceAgreementActivity;

    sget v0, Lcom/powervision/login/R$string;->APP_Login_11:I

    invoke-virtual {p1, v0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity$1;->this$0:Lcom/powervision/login/ui/activity/ServiceAgreementActivity;

    sget v2, Lcom/powervision/login/R$string;->APP_Link_2:I

    invoke-virtual {v1, v2}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/powervision/base/base/web/WebViewActivity;->jumpToWebViewActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 143
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 144
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity$1;->this$0:Lcom/powervision/login/ui/activity/ServiceAgreementActivity;

    sget v1, Lcom/powervision/login/R$color;->login_blue:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
