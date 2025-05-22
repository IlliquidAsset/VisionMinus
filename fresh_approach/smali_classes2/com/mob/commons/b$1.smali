.class final Lcom/mob/commons/b$1;
.super Ljava/lang/Thread;
.source "CommonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b;->a(Lcom/mob/commons/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b$a;


# direct methods
.method constructor <init>(Lcom/mob/commons/b$a;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/mob/commons/b$1;->a:Lcom/mob/commons/b$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 581
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->at()Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    invoke-static {}, Lcom/mob/commons/b;->au()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 585
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 587
    invoke-static {v0}, Lcom/mob/commons/b;->a(Z)Z

    .line 588
    iget-object v0, p0, Lcom/mob/commons/b$1;->a:Lcom/mob/commons/b$a;

    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {v0}, Lcom/mob/commons/b$a;->a()V

    :cond_1
    return-void
.end method
