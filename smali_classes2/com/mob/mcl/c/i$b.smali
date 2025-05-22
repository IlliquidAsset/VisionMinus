.class Lcom/mob/mcl/c/i$b;
.super Ljava/lang/Object;
.source "TcpHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/i;->a(Ljava/lang/String;IILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/BusinessMessageListener;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/i;Lcom/mob/mcl/BusinessMessageListener;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mob/mcl/c/i$b;->a:Lcom/mob/mcl/BusinessMessageListener;

    iput-object p3, p0, Lcom/mob/mcl/c/i$b;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/mob/mcl/c/i$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mob/mcl/c/i$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mob/mcl/c/i$b;->a:Lcom/mob/mcl/BusinessMessageListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/mcl/c/i$b;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mob/mcl/c/i$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/mcl/c/i$b;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/mob/mcl/BusinessMessageListener;->messageReceived(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
