.class Lcn/sharesdk/loopshare/utils/e$a;
.super Lcn/sharesdk/loopshare/utils/a$a;
.source "MobLinkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/loopshare/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/utils/e;


# direct methods
.method private constructor <init>(Lcn/sharesdk/loopshare/utils/e;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/e$a;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/a$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sharesdk/loopshare/utils/e;Lcn/sharesdk/loopshare/utils/e$1;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e$a;-><init>(Lcn/sharesdk/loopshare/utils/e;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e$a;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-static {v0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;Z)V

    return-void
.end method

.method public onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    .line 381
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 382
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e$a;->a:Lcn/sharesdk/loopshare/utils/e;

    const-string v1, "onCreated"

    invoke-static {v0, v1, p2, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;)V

    .line 389
    instance-of v0, p1, Lcn/sharesdk/loopshare/LoopShareActivity;

    const-string v1, "moblink_internal_intent"

    const/4 v2, 0x1

    const-string v3, "[MOBLINK]%s"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Not internal intent, ignore!"

    aput-object v0, p2, v4

    invoke-virtual {p1, v3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    .line 391
    :cond_1
    :goto_0
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 393
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v5, "=====> Start main logic during CREATE."

    aput-object v5, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    if-eqz p2, :cond_3

    const-string v0, "_wxobject_message_ext"

    .line 398
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5fae\u4fe1\u5c0f\u7a0b\u5e8f url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v1, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 401
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 402
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e$a;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-static {v0, p2, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;Landroid/app/Activity;)V

    .line 406
    :cond_3
    invoke-static {p2}, Lcn/sharesdk/loopshare/utils/d;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "HAS scene, process."

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 408
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e$a;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-static {v0, p2, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_1

    .line 410
    :cond_4
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "NO scene, ignore."

    aput-object v0, p2, v4

    invoke-virtual {p1, v3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 7

    .line 419
    invoke-super {p0, p1}, Lcn/sharesdk/loopshare/utils/a$a;->onResumed(Landroid/app/Activity;)V

    .line 420
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/e$a;->a:Lcn/sharesdk/loopshare/utils/e;

    const-string v2, "onResumed"

    invoke-static {v1, v2, v0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;)V

    const/4 v1, 0x1

    const-string v2, "[MOBLINK]%s"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v4, "moblink_internal_intent"

    .line 424
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 426
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 427
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "=====> Start main logic during RESUME."

    aput-object v6, v5, v3

    invoke-virtual {v4, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 428
    iget-object v4, p0, Lcn/sharesdk/loopshare/utils/e$a;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-static {v4, v0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "=====> NO main logic during RESUME."

    aput-object v6, v5, v3

    invoke-virtual {v4, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    if-eqz v0, :cond_1

    const-string v4, "moblink_skip_server_restore"

    .line 439
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Restored through scheme, skip server-restoring."

    aput-object v5, v1, v3

    invoke-virtual {p1, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 441
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 442
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/e$a;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-static {v1, v0}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/e$a;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-static {v1, v0, p1}, Lcn/sharesdk/loopshare/utils/e;->b(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;Landroid/app/Activity;)V

    :cond_2
    :goto_1
    return-void
.end method
