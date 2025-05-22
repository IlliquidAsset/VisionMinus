.class Lcom/mob/guard/impl/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/guard/impl/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/guard/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/guard/impl/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/guard/impl/c$c;->a:Lcom/mob/guard/impl/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/guard/impl/c$c;->a:Lcom/mob/guard/impl/c;

    invoke-static {v0}, Lcom/mob/guard/impl/c;->a(Lcom/mob/guard/impl/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/guard/impl/c$c;->a:Lcom/mob/guard/impl/c;

    invoke-virtual {v0}, Lcom/mob/guard/impl/c;->f()V

    :cond_0
    return-void
.end method
