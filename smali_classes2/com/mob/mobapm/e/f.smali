.class public Lcom/mob/mobapm/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*?(gif|jpeg|png|jpg|bmp|tiff|webp|JPG|GIF|JPEG|PNG|BMP|TIFF|WEBP)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mob/mobapm/e/f;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Lcom/mob/mobapm/core/Transaction;)V
    .locals 3

    if-eqz p0, :cond_7

    .line 1
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 9
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mob.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "rules"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "host"

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-static {p0}, Lcom/mob/mobapm/e/f;->c(Lcom/mob/mobapm/core/Transaction;)V

    goto :goto_0

    .line 19
    :cond_5
    :goto_1
    invoke-static {p0}, Lcom/mob/mobapm/e/f;->c(Lcom/mob/mobapm/core/Transaction;)V

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->isCreate()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/mob/mobapm/core/c;->i:Z

    if-eqz v0, :cond_7

    .line 29
    invoke-static {p0}, Lcom/mob/mobapm/e/f;->b(Lcom/mob/mobapm/core/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 32
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: check host error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public static b(Lcom/mob/mobapm/core/Transaction;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "dnsWhiteMap"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 7
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p0, v2}, Lcom/mob/mobapm/core/Transaction;->setIp(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_3

    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {p0, v0}, Lcom/mob/mobapm/core/Transaction;->setHijacked(I)V

    return-void

    :cond_3
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, v1}, Lcom/mob/mobapm/core/Transaction;->setHijacked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 24
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APM: prase di error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static c(Lcom/mob/mobapm/core/Transaction;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "samplingRate"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "picSamplingRate"

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 20
    :cond_2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/mob/mobapm/e/f;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    if-gt v0, v3, :cond_3

    .line 23
    invoke-virtual {p0, v2}, Lcom/mob/mobapm/core/Transaction;->setCreate(Z)V

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    .line 24
    sget-object v3, Lcom/mob/mobapm/e/f;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_4

    if-gt v0, v1, :cond_4

    .line 25
    invoke-virtual {p0, v2}, Lcom/mob/mobapm/core/Transaction;->setCreate(Z)V

    :cond_4
    :goto_1
    return-void
.end method
