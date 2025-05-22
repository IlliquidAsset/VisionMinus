.class public Lcn/sharesdk/framework/authorize/b;
.super Ljava/lang/Object;
.source "AuthorizeParams.java"


# static fields
.field private static volatile a:Lcn/sharesdk/framework/authorize/b;


# instance fields
.field private b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcn/sharesdk/framework/authorize/b;
    .locals 2

    .line 23
    const-class v0, Lcn/sharesdk/framework/authorize/b;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/authorize/b;->a:Lcn/sharesdk/framework/authorize/b;

    if-nez v1, :cond_1

    .line 25
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    sget-object v1, Lcn/sharesdk/framework/authorize/b;->a:Lcn/sharesdk/framework/authorize/b;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcn/sharesdk/framework/authorize/b;

    invoke-direct {v1}, Lcn/sharesdk/framework/authorize/b;-><init>()V

    sput-object v1, Lcn/sharesdk/framework/authorize/b;->a:Lcn/sharesdk/framework/authorize/b;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 31
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    sget-object v0, Lcn/sharesdk/framework/authorize/b;->a:Lcn/sharesdk/framework/authorize/b;

    return-object v0

    :catchall_1
    move-exception v1

    .line 31
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .line 15
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/b;->b:Landroid/app/Activity;

    return-void
.end method
