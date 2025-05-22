.class Lcom/mob/mobapm/core/l/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mobapm/core/l/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mobapm/core/l/a;


# direct methods
.method constructor <init>(Lcom/mob/mobapm/core/l/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/l/a$a;->a:Lcom/mob/mobapm/core/l/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/mob/mobapm/core/l/a;->a(I)I

    .line 4
    iget-object p1, p0, Lcom/mob/mobapm/core/l/a$a;->a:Lcom/mob/mobapm/core/l/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mob/mobapm/core/l/a;->a(Lcom/mob/mobapm/core/l/a;Z)Z

    return-void
.end method
