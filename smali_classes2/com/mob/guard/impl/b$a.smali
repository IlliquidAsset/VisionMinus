.class final Lcom/mob/guard/impl/b$a;
.super Lcom/mob/guard/impl/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/guard/impl/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/guard/impl/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mob/guard/impl/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/mob/guard/impl/e;->b()Lcom/mob/tools/log/NLog;

    .line 7
    invoke-static {}, Lcom/mob/guard/impl/c;->e()Lcom/mob/guard/impl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/guard/impl/c;->g()V

    :cond_1
    return-void
.end method
