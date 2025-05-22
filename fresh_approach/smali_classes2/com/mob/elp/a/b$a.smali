.class Lcom/mob/elp/a/b$a;
.super Ljava/lang/Object;
.source "ELPImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/elp/a/b;->a(Lcom/mob/elp/PushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/elp/MobELP$PushMessageListener;

.field final synthetic b:Lcom/mob/elp/PushMessage;


# direct methods
.method constructor <init>(Lcom/mob/elp/a/b;Lcom/mob/elp/MobELP$PushMessageListener;Lcom/mob/elp/PushMessage;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mob/elp/a/b$a;->a:Lcom/mob/elp/MobELP$PushMessageListener;

    iput-object p3, p0, Lcom/mob/elp/a/b$a;->b:Lcom/mob/elp/PushMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mob/elp/a/b$a;->a:Lcom/mob/elp/MobELP$PushMessageListener;

    iget-object v0, p0, Lcom/mob/elp/a/b$a;->b:Lcom/mob/elp/PushMessage;

    invoke-interface {p1, v0}, Lcom/mob/elp/MobELP$PushMessageListener;->messageReceived(Lcom/mob/elp/PushMessage;)V

    const/4 p1, 0x0

    return p1
.end method
