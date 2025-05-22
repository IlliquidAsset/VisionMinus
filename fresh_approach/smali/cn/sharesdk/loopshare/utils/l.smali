.class public Lcn/sharesdk/loopshare/utils/l;
.super Ljava/lang/Object;
.source "YadUtil.java"


# direct methods
.method private static a()Ljava/lang/Object;
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.youzu.yad.YAD"

    .line 11
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 12
    invoke-static {}, Lcn/sharesdk/loopshare/utils/l;->a()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ulinkclickEvent"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    aput-object v2, v4, v7

    .line 14
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception p0

    .line 25
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 23
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 21
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p0

    .line 19
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception p0

    .line 17
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method
