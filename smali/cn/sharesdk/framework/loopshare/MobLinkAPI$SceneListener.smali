.class Lcn/sharesdk/framework/loopshare/MobLinkAPI$SceneListener;
.super Ljava/lang/Object;
.source "MobLinkAPI.java"

# interfaces
.implements Lcn/sharesdk/loopshare/RestoreSceneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/loopshare/MobLinkAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SceneListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sharesdk/framework/loopshare/MobLinkAPI$1;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/sharesdk/framework/loopshare/MobLinkAPI$SceneListener;-><init>()V

    return-void
.end method


# virtual methods
.method public completeRestore(Lcn/sharesdk/loopshare/Scene;)V
    .locals 0

    return-void
.end method

.method public notFoundScene(Lcn/sharesdk/loopshare/Scene;)V
    .locals 0

    return-void
.end method

.method public willRestoreScene(Lcn/sharesdk/loopshare/Scene;)Ljava/lang/Class;
    .locals 2
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

    .line 123
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LoopShare MobLinkAPI willRestoreScene ==> RestoreTempActivity"

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 124
    const-class p1, Lcn/sharesdk/framework/loopshare/RestoreTempActivity;

    return-object p1
.end method
