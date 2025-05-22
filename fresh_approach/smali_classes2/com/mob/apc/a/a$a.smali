.class Lcom/mob/apc/a/a$a;
.super Lcom/mob/apc/a/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/apc/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/mob/apc/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/apc/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/apc/a/f;)Lcom/mob/apc/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mob/apc/a/d;->a()Lcom/mob/apc/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/apc/a/d;->a(Lcom/mob/apc/a/f;)Lcom/mob/apc/a/f;

    move-result-object p1

    return-object p1
.end method
