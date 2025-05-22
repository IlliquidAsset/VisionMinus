.class final Lcom/mob/MobUser$2;
.super Ljava/lang/Object;
.source "MobUser.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobUser;->c(Lcom/mob/MobUser$OnUserGotListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/MobUser$OnUserGotListener;


# direct methods
.method constructor <init>(Lcom/mob/MobUser$OnUserGotListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/mob/MobUser$2;->a:Lcom/mob/MobUser$OnUserGotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 205
    iget-object p1, p0, Lcom/mob/MobUser$2;->a:Lcom/mob/MobUser$OnUserGotListener;

    invoke-static {}, Lcom/mob/MobUser;->c()Lcom/mob/MobUser;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mob/MobUser$OnUserGotListener;->onUserGot(Lcom/mob/MobUser;)V

    const/4 p1, 0x0

    return p1
.end method
