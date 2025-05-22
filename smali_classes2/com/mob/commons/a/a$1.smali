.class Lcom/mob/commons/a/a$1;
.super Ljava/lang/Thread;
.source "ActClt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/a;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mob/commons/a/a$1;->a:Lcom/mob/commons/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mob/commons/a/a$1;->a:Lcom/mob/commons/a/a;

    invoke-virtual {v0}, Lcom/mob/commons/a/a;->a_()V

    return-void
.end method
