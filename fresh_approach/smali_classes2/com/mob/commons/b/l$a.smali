.class Lcom/mob/commons/b/l$a;
.super Landroid/database/ContentObserver;
.source "Vivo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/mob/commons/b/l;


# direct methods
.method public constructor <init>(Lcom/mob/commons/b/l;I)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 136
    iput p2, p0, Lcom/mob/commons/b/l$a;->a:I

    .line 137
    iput-object p1, p0, Lcom/mob/commons/b/l$a;->b:Lcom/mob/commons/b/l;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/mob/commons/b/l$a;->b:Lcom/mob/commons/b/l;

    if-eqz v0, :cond_0

    .line 142
    iget v1, p0, Lcom/mob/commons/b/l$a;->a:I

    invoke-static {v0, p1, v1}, Lcom/mob/commons/b/l;->a(Lcom/mob/commons/b/l;ZI)V

    :cond_0
    return-void
.end method
