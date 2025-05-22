.class Lcom/mob/elp/a/d$a;
.super Ljava/lang/Object;
.source "ELPImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/elp/a/d;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/mob/elp/a/d;


# direct methods
.method constructor <init>(Lcom/mob/elp/a/d;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/elp/a/d$a;->b:Lcom/mob/elp/a/d;

    iput-object p2, p0, Lcom/mob/elp/a/d$a;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/elp/c/a;->a()Lcom/mob/elp/c/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/elp/a/d$a;->b:Lcom/mob/elp/a/d;

    iget-object v0, v0, Lcom/mob/elp/a/d;->a:Lcom/mob/elp/PushMessage;

    iget-object v1, p0, Lcom/mob/elp/a/d$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/mob/elp/c/a;->a(Lcom/mob/elp/PushMessage;Ljava/util/ArrayList;)V

    .line 2
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mob/elp/a/d$a;->b:Lcom/mob/elp/a/d;

    iget-object v1, v1, Lcom/mob/elp/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/elp/d/d;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
