.class Lcn/sharesdk/loopshare/utils/a$1;
.super Ljava/lang/Object;
.source "AppStatus.java"

# interfaces
.implements Lcom/mob/tools/utils/ActivityTracker$Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/loopshare/utils/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/utils/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/loopshare/utils/a;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/a$1;->a:Lcn/sharesdk/loopshare/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/a$1;->a:Lcn/sharesdk/loopshare/utils/a;

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/a;->a(Lcn/sharesdk/loopshare/utils/a;)Lcn/sharesdk/loopshare/utils/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/loopshare/utils/a$a;->onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/a$1;->a:Lcn/sharesdk/loopshare/utils/a;

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/a;->a(Lcn/sharesdk/loopshare/utils/a;)Lcn/sharesdk/loopshare/utils/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Lcn/sharesdk/loopshare/utils/a$a;->onDestroyed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/a$1;->a:Lcn/sharesdk/loopshare/utils/a;

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/a;->a(Lcn/sharesdk/loopshare/utils/a;)Lcn/sharesdk/loopshare/utils/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lcn/sharesdk/loopshare/utils/a$a;->onPaused(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/a$1;->a:Lcn/sharesdk/loopshare/utils/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/sharesdk/loopshare/utils/a;->a(Lcn/sharesdk/loopshare/utils/a;Z)V

    .line 106
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/a$1;->a:Lcn/sharesdk/loopshare/utils/a;

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/a;->a(Lcn/sharesdk/loopshare/utils/a;)Lcn/sharesdk/loopshare/utils/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lcn/sharesdk/loopshare/utils/a$a;->onResumed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/a$1;->a:Lcn/sharesdk/loopshare/utils/a;

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/a;->a(Lcn/sharesdk/loopshare/utils/a;)Lcn/sharesdk/loopshare/utils/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/loopshare/utils/a$a;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStarted(Landroid/app/Activity;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/a$1;->a:Lcn/sharesdk/loopshare/utils/a;

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/a;->a(Lcn/sharesdk/loopshare/utils/a;)Lcn/sharesdk/loopshare/utils/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcn/sharesdk/loopshare/utils/a$a;->onStarted(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onStopped(Landroid/app/Activity;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/a$1;->a:Lcn/sharesdk/loopshare/utils/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/sharesdk/loopshare/utils/a;->a(Lcn/sharesdk/loopshare/utils/a;Z)V

    .line 123
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/a$1;->a:Lcn/sharesdk/loopshare/utils/a;

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/a;->a(Lcn/sharesdk/loopshare/utils/a;)Lcn/sharesdk/loopshare/utils/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Lcn/sharesdk/loopshare/utils/a$a;->onStopped(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
