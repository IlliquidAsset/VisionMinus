.class Lcom/mob/guard/impl/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/guard/impl/c;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/mob/guard/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/guard/impl/c;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/guard/impl/c$a;->c:Lcom/mob/guard/impl/c;

    iput-object p2, p0, Lcom/mob/guard/impl/c$a;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mob/guard/impl/c$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0xc8

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    iget-object v0, p0, Lcom/mob/guard/impl/c$a;->c:Lcom/mob/guard/impl/c;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mob/guard/impl/c$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mob/guard/impl/c;->a(Lcom/mob/guard/impl/c;ZLjava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/mob/guard/impl/c$a;->b:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 5
    iget-object v0, p0, Lcom/mob/guard/impl/c$a;->c:Lcom/mob/guard/impl/c;

    invoke-virtual {v0}, Lcom/mob/guard/impl/c;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
