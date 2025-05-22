.class public Lcom/mob/apc/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/mob/MobACService;

.field private final b:Lcom/mob/apc/a/e;


# direct methods
.method public constructor <init>(Lcom/mob/MobACService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mob/apc/a/a$a;

    invoke-direct {v0, p0}, Lcom/mob/apc/a/a$a;-><init>(Lcom/mob/apc/a/a;)V

    iput-object v0, p0, Lcom/mob/apc/a/a;->b:Lcom/mob/apc/a/e;

    iput-object p1, p0, Lcom/mob/apc/a/a;->a:Lcom/mob/MobACService;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;II)I
    .locals 1

    iget-object v0, p0, Lcom/mob/apc/a/a;->a:Lcom/mob/MobACService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/MobACService;->a(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/mob/apc/a/a;->b:Lcom/mob/apc/a/e;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/mob/apc/a/a;->a:Lcom/mob/MobACService;

    invoke-virtual {v0, p1}, Lcom/mob/MobACService;->a(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mob/apc/a/a;->a:Lcom/mob/MobACService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/apc/MobAPC;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/apc/a/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
