.class final Lcom/mob/MobSDK$6;
.super Ljava/lang/Object;
.source "MobSDK.java"

# interfaces
.implements Lcom/mob/MobUser$OnUserGotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->getUser(Lcom/mob/MobUser$OnUserGotListener;)V
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

    .line 759
    iput-object p1, p0, Lcom/mob/MobSDK$6;->a:Lcom/mob/MobUser$OnUserGotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserGot(Lcom/mob/MobUser;)V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/mob/MobSDK$6;->a:Lcom/mob/MobUser$OnUserGotListener;

    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {p1}, Lcom/mob/MobUser;->getMobUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lcom/mob/MobUser$OnUserGotListener;->onUserGot(Lcom/mob/MobUser;)V

    :cond_1
    return-void
.end method
