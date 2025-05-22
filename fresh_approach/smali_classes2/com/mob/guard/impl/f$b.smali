.class final Lcom/mob/guard/impl/f$b;
.super Lcom/mob/guard/impl/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/guard/impl/f;->a(Landroid/content/Context;Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/guard/impl/f$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mob/guard/impl/f$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/guard/impl/f$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/mob/guard/impl/f$b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/mob/guard/impl/f$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/guard/impl/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    invoke-static {}, Lcom/mob/mcl/MCLSDK;->getSuid()Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v2, p0, Lcom/mob/guard/impl/f$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/guard/impl/f$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mob/guard/impl/f$b;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/mob/guard/impl/f$b;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/mob/guard/impl/f$b;->e:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/mob/guard/impl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
