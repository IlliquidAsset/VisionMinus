.class Lcn/sharesdk/framework/b/d$3;
.super Ljava/lang/Object;
.source "StatisticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/b/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/b/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/b/d;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcn/sharesdk/framework/b/d$3;->a:Lcn/sharesdk/framework/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 283
    invoke-static {}, Lcn/sharesdk/framework/authorize/f;->c()Lcn/sharesdk/framework/authorize/f;

    move-result-object v0

    .line 285
    :try_start_0
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/f;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
