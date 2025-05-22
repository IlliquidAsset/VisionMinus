.class public interface abstract Lcn/sharesdk/loopshare/RestoreSceneListener;
.super Ljava/lang/Object;
.source "RestoreSceneListener.java"

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# virtual methods
.method public abstract completeRestore(Lcn/sharesdk/loopshare/Scene;)V
.end method

.method public abstract notFoundScene(Lcn/sharesdk/loopshare/Scene;)V
.end method

.method public abstract willRestoreScene(Lcn/sharesdk/loopshare/Scene;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/loopshare/Scene;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method
