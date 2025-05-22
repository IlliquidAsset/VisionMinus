.class Lcom/mob/mcl/c/i$a$a;
.super Ljava/lang/Object;
.source "TcpHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/i$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mob/mcl/c/i$a;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/i$a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mcl/c/i$a$a;->b:Lcom/mob/mcl/c/i$a;

    iput-boolean p2, p0, Lcom/mob/mcl/c/i$a$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mob/mcl/c/i$a$a;->b:Lcom/mob/mcl/c/i$a;

    iget-object p1, p1, Lcom/mob/mcl/c/i$a;->a:Lcom/mob/mcl/BusinessCallBack;

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/mob/mcl/c/i$a$a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mob/mcl/BusinessCallBack;->callback(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
