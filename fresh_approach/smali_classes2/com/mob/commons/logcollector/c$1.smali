.class Lcom/mob/commons/logcollector/c$1;
.super Ljava/lang/Object;
.source "LogsManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/logcollector/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/logcollector/c;


# direct methods
.method constructor <init>(Lcom/mob/commons/logcollector/c;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mob/commons/logcollector/c$1;->a:Lcom/mob/commons/logcollector/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 63
    invoke-static {}, Lcom/mob/commons/a;->b()Z

    .line 64
    invoke-static {}, Lcom/mob/commons/b;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mob/commons/logcollector/c$1;->a:Lcom/mob/commons/logcollector/c;

    invoke-virtual {v0, p1}, Lcom/mob/commons/logcollector/c;->a(Landroid/os/Message;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
