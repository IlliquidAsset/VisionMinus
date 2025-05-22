.class Lcom/tencent/connect/avatar/ImageActivity$5;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/avatar/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/avatar/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/connect/avatar/ImageActivity;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 12

    .line 668
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->e(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 669
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->e(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 670
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->f(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 671
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->f(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 672
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->d(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 673
    check-cast p1, Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "ret"

    .line 676
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 678
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-nez v2, :cond_1

    .line 681
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const-string v1, "\u8bbe\u7f6e\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/connect/avatar/ImageActivity;->b(Lcom/tencent/connect/avatar/ImageActivity;Ljava/lang/String;I)V

    .line 682
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const-wide/16 v3, 0x0

    const-string v1, "10658"

    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V

    .line 685
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->k(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->k(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ANDROIDSDK.SETAVATAR.SUCCEED"

    const-string v9, "12"

    const-string v10, "3"

    const-string v11, "0"

    invoke-virtual/range {v5 .. v11}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    .line 690
    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->l(Lcom/tencent/connect/avatar/ImageActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v1}, Lcom/tencent/connect/avatar/ImageActivity;->l(Lcom/tencent/connect/avatar/ImageActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 693
    iget-object v3, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v3}, Lcom/tencent/connect/avatar/ImageActivity;->l(Lcom/tencent/connect/avatar/ImageActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 697
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, v2, p1, v1, v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Lcom/tencent/connect/avatar/ImageActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->j(Lcom/tencent/connect/avatar/ImageActivity;)V

    goto :goto_1

    .line 704
    :cond_1
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const-string v0, "\u8bbe\u7f6e\u51fa\u9519\u4e86\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u518d\u5c1d\u8bd5\u4e0b\u5462\uff1a\uff09"

    invoke-static {p1, v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->b(Lcom/tencent/connect/avatar/ImageActivity;Ljava/lang/String;I)V

    .line 705
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v2

    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->k(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/auth/QQToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->k(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/auth/QQToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ANDROIDSDK.SETAVATAR.SUCCEED"

    const-string v6, "12"

    const-string v7, "19"

    const-string v8, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->e(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 653
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->e(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 654
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->f(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 655
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->f(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 656
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->f(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v2, "\u91cd\u8bd5"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->d(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Lcom/tencent/connect/avatar/ImageActivity;Z)Z

    .line 662
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    iget-object p1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tencent/connect/avatar/ImageActivity;->b(Lcom/tencent/connect/avatar/ImageActivity;Ljava/lang/String;I)V

    .line 663
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$5;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const-string v0, "10660"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V

    return-void
.end method
