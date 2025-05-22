.class public Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "GuideConnectHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebClickableSpan"
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;


# direct methods
.method public constructor <init>(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;->this$0:Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const-string p1, ""

    .line 84
    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;->color:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;->color:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 101
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;->this$0:Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    const-class v1, Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;->this$0:Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    invoke-virtual {v0, p1}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 96
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
