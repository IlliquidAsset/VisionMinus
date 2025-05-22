.class public Lcn/sharesdk/loopshare/MobLink;
.super Ljava/lang/Object;
.source "MobLink.java"

# interfaces
.implements Lcom/mob/tools/proguard/ProtectedMemberKeeper;
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field public static final DEBUGGABLE:Z = false

.field private static a:Lcn/sharesdk/loopshare/utils/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 22
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 2

    const-class v0, Lcn/sharesdk/loopshare/MobLink;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcn/sharesdk/loopshare/MobLink;->a:Lcn/sharesdk/loopshare/utils/e;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcn/sharesdk/loopshare/utils/e;

    invoke-direct {v1}, Lcn/sharesdk/loopshare/utils/e;-><init>()V

    sput-object v1, Lcn/sharesdk/loopshare/MobLink;->a:Lcn/sharesdk/loopshare/utils/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMobID(Lcn/sharesdk/loopshare/Scene;Lcn/sharesdk/loopshare/ActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/loopshare/Scene;",
            "Lcn/sharesdk/loopshare/ActionListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->a()V

    .line 80
    sget-object v0, Lcn/sharesdk/loopshare/MobLink;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/Scene;Lcn/sharesdk/loopshare/ActionListener;)V

    return-void
.end method

.method public static getSdkTag()Ljava/lang/String;
    .locals 1

    const-string v0, "MOBLINK"

    return-object v0
.end method

.method public static getSdkVersion()I
    .locals 4

    const-string v0, "3.6.8"

    const-string v1, "\\."

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    mul-int/lit8 v2, v2, 0x64

    .line 102
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static registerSpecifiedSchemeListener(Ljava/lang/String;Lcn/sharesdk/loopshare/RestoreSceneListener;)V
    .locals 1

    .line 47
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->a()V

    .line 48
    sget-object v0, Lcn/sharesdk/loopshare/MobLink;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Ljava/lang/String;Lcn/sharesdk/loopshare/RestoreSceneListener;)V

    return-void
.end method

.method public static setActivityDelegate(Landroid/app/Activity;Lcn/sharesdk/loopshare/SceneRestorable;)V
    .locals 1

    .line 68
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->a()V

    .line 69
    sget-object v0, Lcn/sharesdk/loopshare/MobLink;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/app/Activity;Lcn/sharesdk/loopshare/SceneRestorable;)V

    return-void
.end method

.method public static setRestoreSceneListener(Lcn/sharesdk/loopshare/RestoreSceneListener;)V
    .locals 1

    .line 36
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->a()V

    .line 37
    sget-object v0, Lcn/sharesdk/loopshare/MobLink;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-virtual {v0, p0}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/RestoreSceneListener;)V

    return-void
.end method

.method public static varargs skipRestoreSceneFromWx([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->a()V

    .line 90
    sget-object v0, Lcn/sharesdk/loopshare/MobLink;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-virtual {v0, p0}, Lcn/sharesdk/loopshare/utils/e;->a([Ljava/lang/Class;)V

    return-void
.end method

.method public static updateNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    .line 57
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->a()V

    .line 58
    sget-object v0, Lcn/sharesdk/loopshare/MobLink;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/content/Intent;Landroid/app/Activity;)V

    return-void
.end method
