.class Lcom/mob/elp/b/a$a$a;
.super Ljava/lang/Object;
.source "InAppMessage.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/elp/b/a$a;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/mob/elp/b/a$a;


# direct methods
.method constructor <init>(Lcom/mob/elp/b/a$a;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/elp/b/a$a$a;->b:Lcom/mob/elp/b/a$a;

    iput-object p2, p0, Lcom/mob/elp/b/a$a$a;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mob/elp/b/a$a$a;->b:Lcom/mob/elp/b/a$a;

    iget-object p1, p1, Lcom/mob/elp/b/a$a;->d:Lcom/mob/elp/b/a;

    invoke-static {p1}, Lcom/mob/elp/b/a;->a(Lcom/mob/elp/b/a;)Lcom/mob/elp/b/b;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mob/elp/b/a$a$a;->b:Lcom/mob/elp/b/a$a;

    iget-object p1, p1, Lcom/mob/elp/b/a$a;->d:Lcom/mob/elp/b/a;

    invoke-static {p1}, Lcom/mob/elp/b/a;->a(Lcom/mob/elp/b/a;)Lcom/mob/elp/b/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/elp/a/b;->b()Lcom/mob/elp/a/b;

    move-result-object p1

    iget-object v1, p0, Lcom/mob/elp/b/a$a$a;->b:Lcom/mob/elp/b/a$a;

    iget-object v2, v1, Lcom/mob/elp/b/a$a;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/mob/elp/b/a$a;->a:Lcom/mob/elp/PushMessage;

    invoke-virtual {p1, v2, v1}, Lcom/mob/elp/a/b;->a(Ljava/lang/String;Lcom/mob/elp/PushMessage;)V

    return v0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mob/elp/b/a$a$a;->b:Lcom/mob/elp/b/a$a;

    iget-object v1, p1, Lcom/mob/elp/b/a$a;->d:Lcom/mob/elp/b/a;

    iget-object v2, p1, Lcom/mob/elp/b/a$a;->c:Landroid/app/Activity;

    iget-object p1, p1, Lcom/mob/elp/b/a$a;->a:Lcom/mob/elp/PushMessage;

    iget-object v3, p0, Lcom/mob/elp/b/a$a$a;->a:Ljava/util/ArrayList;

    invoke-static {v2, p1, v3}, Lcom/mob/elp/b/b;->a(Landroid/content/Context;Lcom/mob/elp/PushMessage;Ljava/util/ArrayList;)Lcom/mob/elp/b/b;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mob/elp/b/a;->a(Lcom/mob/elp/b/a;Lcom/mob/elp/b/b;)Lcom/mob/elp/b/b;

    .line 6
    iget-object p1, p0, Lcom/mob/elp/b/a$a$a;->b:Lcom/mob/elp/b/a$a;

    iget-object p1, p1, Lcom/mob/elp/b/a$a;->d:Lcom/mob/elp/b/a;

    invoke-static {p1}, Lcom/mob/elp/b/a;->a(Lcom/mob/elp/b/a;)Lcom/mob/elp/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/elp/b/b;->show()V

    .line 7
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/elp/b/a$a$a;->b:Lcom/mob/elp/b/a$a;

    iget-object v2, v2, Lcom/mob/elp/b/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is show"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mob/elp/d/d;->a(Ljava/lang/String;)V

    return v0
.end method
