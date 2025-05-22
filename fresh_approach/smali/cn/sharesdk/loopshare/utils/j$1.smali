.class final Lcn/sharesdk/loopshare/utils/j$1;
.super Ljava/lang/Object;
.source "TotalSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/loopshare/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 12
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    sput-boolean v0, Lcn/sharesdk/loopshare/utils/j;->a:Z

    return-void
.end method
