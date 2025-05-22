.class public Lcom/mob/guard/MobGuard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;


# static fields
.field public static final SDK_TAG:Ljava/lang/String; = "MOBGUARD"

.field public static final SDK_VERSION_CODE:I = 0x4e21

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "2.0.1"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/mob/guard/impl/b;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGuardId()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/MCLSDK;->getSuid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSdkTag()Ljava/lang/String;
    .locals 1

    const-string v0, "MOBGUARD"

    return-object v0
.end method

.method public static getVersionTime()Ljava/lang/String;
    .locals 1

    const-string v0, "2021.03.17 16:03"

    return-object v0
.end method

.method public static setOnAppActiveListener(Lcom/mob/guard/OnAppActiveListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/guard/impl/f;->a(Lcom/mob/guard/OnAppActiveListener;)V

    return-void
.end method
