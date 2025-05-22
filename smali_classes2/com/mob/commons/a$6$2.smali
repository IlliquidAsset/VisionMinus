.class Lcom/mob/commons/a$6$2;
.super Ljava/lang/Object;
.source "CltsInitializer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/mob/commons/a$6;


# direct methods
.method constructor <init>(Lcom/mob/commons/a$6;Ljava/lang/Throwable;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/mob/commons/a$6$2;->b:Lcom/mob/commons/a$6;

    iput-object p2, p0, Lcom/mob/commons/a$6$2;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 612
    iget-object p1, p0, Lcom/mob/commons/a$6$2;->b:Lcom/mob/commons/a$6;

    iget-object p1, p1, Lcom/mob/commons/a$6;->b:Lcom/mob/OperationCallback;

    iget-object v0, p0, Lcom/mob/commons/a$6$2;->a:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lcom/mob/OperationCallback;->onFailure(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
