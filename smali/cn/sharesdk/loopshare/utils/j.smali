.class public Lcn/sharesdk/loopshare/utils/j;
.super Ljava/lang/Object;
.source "TotalSwitcher.java"


# static fields
.field public static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/loopshare/utils/j$1;

    invoke-direct {v1}, Lcn/sharesdk/loopshare/utils/j$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
