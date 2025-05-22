.class Lcom/powervision/base/fragment/AgreementFragment$2;
.super Landroid/text/style/ClickableSpan;
.source "AgreementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/fragment/AgreementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/fragment/AgreementFragment;


# direct methods
.method constructor <init>(Lcom/powervision/base/fragment/AgreementFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/powervision/base/fragment/AgreementFragment$2;->this$0:Lcom/powervision/base/fragment/AgreementFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 139
    iget-object p1, p0, Lcom/powervision/base/fragment/AgreementFragment$2;->this$0:Lcom/powervision/base/fragment/AgreementFragment;

    invoke-virtual {p1}, Lcom/powervision/base/fragment/AgreementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment$2;->this$0:Lcom/powervision/base/fragment/AgreementFragment;

    sget v1, Lcom/powervision/base/R$string;->APP_Login_12:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/fragment/AgreementFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/base/fragment/AgreementFragment$2;->this$0:Lcom/powervision/base/fragment/AgreementFragment;

    sget v2, Lcom/powervision/base/R$string;->APP_Link_5:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/fragment/AgreementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/powervision/base/base/web/WebViewActivity;->jumpToWebViewActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 145
    iget-object v0, p0, Lcom/powervision/base/fragment/AgreementFragment$2;->this$0:Lcom/powervision/base/fragment/AgreementFragment;

    invoke-virtual {v0}, Lcom/powervision/base/fragment/AgreementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$color;->blue:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
